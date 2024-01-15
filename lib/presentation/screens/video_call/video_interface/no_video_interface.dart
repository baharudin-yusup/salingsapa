import 'package:flutter/material.dart';

import '../../../services/theme_service.dart';

class NoVideoInterface extends StatelessWidget {
  const NoVideoInterface({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      color: context.colorScheme().background.withOpacity(0.3),
      child: const Center(
        child: Icon(Icons.no_accounts),
      ),
    );
  }
}
