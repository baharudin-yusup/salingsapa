import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/injection_container.dart';
import '../services/platform_service.dart';
import '../services/theme_service.dart';

class IntuitiveTextField extends StatelessWidget {
  final Widget? prefix;
  final bool removePaddingBetweenPrefix;
  final bool alwaysShowPrefix;
  final BoxConstraints? prefixIconConstraint;
  final EdgeInsetsGeometry padding;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmitted;
  final void Function()? onTap;
  final String? hint;
  final bool readOnly;
  final TextEditingController? controller;
  final bool? enabled;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final String? counterText;
  final FocusNode? focusNode;
  final bool? autofocus;

  const IntuitiveTextField({
    super.key,
    this.prefix,
    this.padding = const EdgeInsets.all(IntuitiveUiConstant.tinySpace),
    this.textInputAction,
    this.onChanged,
    this.textInputType,
    this.hint,
    this.readOnly = false,
    this.controller,
    this.enabled,
    this.onSubmitted,
    this.prefixIconConstraint,
    this.removePaddingBetweenPrefix = false,
    this.alwaysShowPrefix = false,
    this.minLines,
    this.maxLength,
    this.maxLines,
    this.counterText,
    this.onTap,
    this.focusNode,
    this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    switch (sl<PlatformService>().os) {
      case PlatformOS.iOS:
        return _buildCupertinoTextField();
      default:
        return _buildMaterialTextField();
    }
  }

  Widget _buildCupertinoTextField() {
    return CupertinoTextField(
      autofocus: autofocus ?? false,
      focusNode: focusNode,
      keyboardType: textInputType,
      prefix: prefix != null
          ? Padding(
              padding: EdgeInsets.only(left: padding.horizontal / 2),
              child: prefix,
            )
          : null,
      padding: prefix != null
          ? EdgeInsets.fromLTRB(
              0,
              padding.vertical / 2,
              padding.horizontal / 2,
              padding.vertical / 2,
            )
          : padding,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      readOnly: readOnly,
      controller: controller,
      onTap: onTap,
    );
  }

  Widget _buildMaterialTextField() {
    return TextField(
      autofocus: autofocus ?? false,
      keyboardType: textInputType,
      focusNode: focusNode,
      decoration: InputDecoration(
        prefix: alwaysShowPrefix ? null : prefix,
        contentPadding: padding,
        hintText: hint,
        prefixIcon: alwaysShowPrefix
            ? Padding(
                padding: EdgeInsets.only(left: padding.horizontal / 2),
                child: prefix,
              )
            : null,
        prefixIconConstraints:
            prefixIconConstraint ?? const BoxConstraints(minWidth: 0),
        counterText: counterText,
      ),
      minLines: minLines,
      maxLength: maxLength,
      maxLines: maxLines,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      enabled: enabled,
    );
  }
}
