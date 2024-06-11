import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/logger.dart';
import '../components/intuitive_scaffold.dart';
import '../services/theme_service.dart';
import '../utils/context_shortcut.dart';

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
          IntuitiveUiConstant.hugeSpace + context.padding.bottom,
        );
        return Markdown(
          padding: innerPadding,
          data: convertedContent,
          styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
          onTapLink: (text, href, title) async {
            if (href == null) {
              return;
            }
            final uri = Uri.parse(href);
            Logger.print('open link $href started...');
            if (!await canLaunchUrl(uri)) {
              Logger.error('cannot launch $href', event: 'opening link');
            }

            try {
              await launchUrl(uri);
            } catch (error) {
              Logger.error(error, event: 'opening link');
            }
          },
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

  String get convertedContent {
    final contentList = content.split('\n')..removeAt(0);
    return contentList.reduce((value, element) => '$value\n$element');
  }
}
