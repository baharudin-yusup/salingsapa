import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';

class IntuitiveTextField extends StatelessWidget {
  final Widget? prefix;
  final EdgeInsetsGeometry padding;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmitted;
  final String? hint;
  final bool readOnly;
  final TextEditingController? controller;
  final bool? enabled;

  const IntuitiveTextField({
    Key? key,
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return _buildCupertinoTextField();
    }
    return _buildMaterialTextField();
  }

  Widget _buildCupertinoTextField() {
    return CupertinoTextField(
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
    );
  }

  Widget _buildMaterialTextField() {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefix: prefix,
        contentPadding: padding,
        hintText: hint,
      ),
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      readOnly: readOnly,
      controller: controller,
      enabled: enabled,
    );
  }
}
