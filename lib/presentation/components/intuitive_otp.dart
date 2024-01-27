import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/theme_service.dart';

enum OtpLength { otp6, otp5 }

class IntuitiveOtp extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? errorMessage;
  final void Function(String otp) onCompleted;
  final void Function(String otp)? onChanged;
  final OtpLength? length;
  final bool? obscure;
  final Color errorColor;

  const IntuitiveOtp({
    super.key,
    this.controller,
    this.focusNode,
    this.obscure,
    this.errorMessage,
    required this.onCompleted,
    this.onChanged,
    this.length,
    this.errorColor = Colors.red,
  });

  @override
  State<IntuitiveOtp> createState() => _IntuitiveOtpState();
}

class _IntuitiveOtpState extends State<IntuitiveOtp> {
  late final int totalFields;
  late final List<TextEditingController> controllers;
  late final List<FocusNode> focusNodes;

  bool isObscureText = true;

  bool get hasError => widget.errorMessage?.isNotEmpty ?? false;

  String get errorMessage => widget.errorMessage ?? '';

  bool get isAllFieldFilled {
    final currentValue = controllers.map((e) => e.text.trim()).join();

    /// Valid condition for calling onResult method:
    /// 1. total otp character = total field
    /// 2. first time value (previous value != current value)
    return currentValue.length == totalFields;
  }

  /// Property for checking whether new value is not equal to old value.
  /// Goal: to prevent hit API twice with the same otp value
  late String previousValue;

  @override
  void initState() {
    super.initState();
    totalFields = widget.length == OtpLength.otp5 ? 5 : 6;
    controllers = List<TextEditingController>.generate(
        totalFields, (_) => TextEditingController());
    focusNodes = List<FocusNode>.generate(totalFields,
        (_) => FocusNode()..addListener(() => listenFocusChanges(_)));
    previousValue = '';
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildList(),
          _buildErrorMessage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  Widget _buildList() {
    final fields = <Widget>[];

    for (var i = 0; i < totalFields; i++) {
      /// OTP field
      fields.add(_buildTextBox(i));

      /// Separator
      if (i == 2 && totalFields == 6) {
        fields.addAll([
          const SizedBox(width: IntuitiveUiConstant.smallSpace),
          const Text('-'),
        ]);
      }

      /// Spacer
      if (i < totalFields - 1) {
        fields.add(const SizedBox(width: IntuitiveUiConstant.smallSpace));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: fields,
    );
  }

  Widget _buildErrorMessage() {
    return Container(
      height: IntuitiveUiConstant.largeSpace,
      padding: const EdgeInsets.only(top: 8.0),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 250),
        child: hasError && isAllFieldFilled
            ? Text(
                errorMessage,
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodySmall
                    ?.copyWith(color: Colors.red),
              )
            : null,
      ),
    );
  }

  Widget _buildTextBox(int index) {
    void onResultPin(String field) {
      int? nextIndex;
      if (field.isNotEmpty && index < totalFields - 1) {
        nextIndex = index + 1;
      }

      if (nextIndex != null) {
        final nextFocusNode = focusNodes[nextIndex];
        FocusScope.of(context).requestFocus(nextFocusNode);
      }

      final currentValue = controllers.map((e) => e.text.trim()).join();

      /// Valid condition for calling onResult method:
      /// 1. total otp character = total field
      /// 2. first time value (previous value != current value)
      if (isAllFieldFilled && previousValue != currentValue) {
        widget.onCompleted(currentValue);
      } else if (widget.onChanged != null) {
        widget.onChanged!(controllers.map((e) => e.text.trim()).join());
      }
      previousValue = currentValue;

      if (mounted) {
        setState(() {});
      }
    }

    return Flexible(
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: context.colorScheme().background,
          border: Border.all(
            color: hasError && isAllFieldFilled
                ? widget.errorColor
                : context.colorScheme().outline.withOpacity(0.3),
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(IntuitiveUiConstant.normalRadius)),
        ),
        alignment: Alignment.center,
        child: FocusScope(
          onKeyEvent: (node, event) {
            final controller = controllers[index];

            /// Handle when user tap backspace on empty field
            if (event is KeyDownEvent &&
                index > 0 &&
                controller.text.isEmpty &&
                (event.logicalKey == LogicalKeyboardKey.backspace ||
                    event.physicalKey == PhysicalKeyboardKey.backspace)) {
              changeFocus(index - 1);
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          onFocusChange: (isFocused) {
            if (isFocused) {
              moveCursor(index);
            }
          },
          child: TextField(
            enableInteractiveSelection: false,
            controller: controllers[index],
            textAlign: TextAlign.center,
            focusNode: focusNodes[index],
            maxLength: 1,
            style: context.textTheme().displaySmall?.copyWith(
                  color: hasError && isAllFieldFilled
                      ? widget.errorColor
                      : context.colorScheme().primary,
                ),
            decoration: InputDecoration(
              counterText: '',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelStyle: context.textTheme().bodyLarge?.copyWith(
                    color: hasError
                        ? widget.errorColor
                        : context.colorScheme().primary,
                  ),
            ),
            obscureText: widget.obscure != null ? widget.obscure! : true,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: onResultPin,
            onTap: () => moveCursor(index),
          ),
        ),
      ),
    );
  }

  void listenFocusChanges(int index) {
    if (focusNodes[index].hasFocus) {
      moveCursor(index);
    }
  }

  void changeFocus(int index) {
    FocusScope.of(context).requestFocus(focusNodes[index]);
  }

  void moveCursor(int index) {
    controllers[index].selection = TextSelection.fromPosition(
      TextPosition(offset: controllers[index].text.length),
    );
  }
}
