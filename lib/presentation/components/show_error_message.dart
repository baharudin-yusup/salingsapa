import 'package:flutter/material.dart';

import '../utils/app_localizations.dart';

void showErrorMessage(BuildContext context, String errorMessage) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(AppLocalizations.of(context)!.ok),
            )
          ],
        );
      });
}
