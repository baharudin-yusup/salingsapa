import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../components/intuitive_scaffold.dart';
import '../../services/theme_service.dart';
import '../../utils/dimension.dart';

class MarkdownScreen extends StatelessWidget {
  final String content;

  const MarkdownScreen(
    this.content, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntuitiveScaffold(
      appBar: IntuitiveAppBar(
        middle: Text(title),
      ),
      builder: (context) {
        final innerPadding = EdgeInsets.fromLTRB(
          IntuitiveUiConstant.normalSpace + context.padding.left,
          IntuitiveUiConstant.normalSpace + context.padding.top,
          IntuitiveUiConstant.normalSpace + context.padding.right,
          IntuitiveUiConstant.normalSpace + context.padding.bottom,
        );
        return Markdown(
          padding: innerPadding,
          data: content,
        );
      },
    );
  }

  String get title {
    final firstLine = content.split('\n').first.trim();
    if (firstLine.startsWith('# ')) {
      return firstLine.substring(2).trim();
    }
    return '';
  }
}
