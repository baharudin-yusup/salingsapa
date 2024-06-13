import 'package:flutter/material.dart';

import '../services/theme_service.dart';
import '../utils/context_shortcut.dart';

class NoContactAccessButton extends StatelessWidget {
  final void Function() onRequest;
  final void Function() onPermissionGranted;
  final void Function() onPermissionDenied;

  const NoContactAccessButton({
    super.key,
    required this.onRequest,
    required this.onPermissionGranted,
    required this.onPermissionDenied,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            context.localization.requestPermissionContactDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: IntuitiveUiConstant.normalSpace),
          ElevatedButton(
            onPressed: onRequest,
            child: Text(context.localization.grantPermission),
          )
        ],
      ),
    );
  }
}
