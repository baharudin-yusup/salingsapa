import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntuitiveTextField extends StatelessWidget {
  final Widget? prefix;
  final EdgeInsetsGeometry padding;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final void Function(String value)? onChanged;
  final String? hint;

  const IntuitiveTextField({
    Key? key,
    this.prefix,
    this.padding = const EdgeInsets.all(7.0),
    this.textInputAction,
    this.onChanged,
    this.textInputType,
    this.hint,
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
          ? EdgeInsets.fromLTRB(0, padding.vertical / 2, padding.horizontal / 2,
              padding.vertical / 2)
          : padding,
      textInputAction: textInputAction,
      onChanged: onChanged,
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
    );
  }
}
