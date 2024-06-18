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
  String previousTotalValue = '';

  @override
  void initState() {
    super.initState();
    totalFields = widget.length == OtpLength.otp5 ? 5 : 6;
    controllers = List<TextEditingController>.generate(
        totalFields, (_) => TextEditingController());
    focusNodes = List<FocusNode>.generate(totalFields,
        (_) => FocusNode()..addListener(() => _listenFocusChanges(_)));
    previousTotalValue = '';
  }

  void _onValueChanged(int index, String currentValue) {
    /// Valid condition for calling onResult method:
    /// 1. total otp character = total field
    /// 2. first time value (previous value != current value)
    if (currentValue.length == 1) {
      _checkTotalValue();
    }

    if (currentValue.isEmpty) {
      return;
    }

    if (currentValue.length == 1) {
      _changeFocus(index + 1);
      return;
    }

    currentValue = currentValue.trim();

    controllers[index].text = currentValue.substring(0, 1);

    var nextControllerIndex = index + 1;
    for (var i = 1; i < currentValue.length; i++) {
      _changeFocus(nextControllerIndex);
      final value = currentValue.substring(i, i + 1);

      if (value.isEmpty || nextControllerIndex > controllers.length - 1) {
        return;
      }

      controllers[nextControllerIndex].text = value;
      nextControllerIndex++;
    }

    _checkTotalValue();
  }

  void _checkTotalValue() {
    final currentTotalValue = controllers.map((e) => e.text.trim()).join();
    if (isAllFieldFilled && previousTotalValue != currentTotalValue) {
      _removeFocus();
      widget.onCompleted(currentTotalValue);
    }

    if (widget.onChanged != null) {
      widget.onChanged!(currentTotalValue);
    }
    previousTotalValue = currentTotalValue;
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

    for (var controller in controllers) {
      controller.dispose();
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
    return AnimatedSize(
      duration: const Duration(milliseconds: 100),
      child: hasError && isAllFieldFilled
          ? Padding(
              padding:
                  const EdgeInsets.only(top: IntuitiveUiConstant.smallSpace),
              child: Text(
                errorMessage,
                style: context.textTheme().bodySmall?.copyWith(
                      color: context.colorScheme().error,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          : const SizedBox(),
    );
  }

  Widget _buildTextBox(int index) {
    return Flexible(
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: context.colorScheme().surface,
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
              _changeFocus(index - 1);
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          onFocusChange: (isFocused) {
            if (isFocused) {
              _moveCursor(index);
            }
          },
          child: TextField(
            enableInteractiveSelection: false,
            controller: controllers[index],
            textAlign: TextAlign.center,
            focusNode: focusNodes[index],
            maxLength: controllers.length - index,
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
            onChanged: (text) => _onValueChanged(index, text),
            onTap: () => _moveCursor(index),
          ),
        ),
      ),
    );
  }

  void _listenFocusChanges(int index) {
    if (focusNodes[index].hasFocus) {
      _moveCursor(index);
    }
  }

  void _changeFocus(int index) {
    if (!mounted) {
      return;
    }

    if (index < controllers.length) {
      FocusScope.of(context).requestFocus(focusNodes[index]);
    } else {
      _removeFocus();
    }
  }

  void _removeFocus() {
    if (!mounted) {
      return;
    }

    FocusScope.of(context).unfocus();
  }

  void _moveCursor(int index) {
    final textLength = controllers[index].text.length;
    controllers[index].selection = TextSelection.fromPosition(
      TextPosition(offset: textLength),
    );
  }
}
