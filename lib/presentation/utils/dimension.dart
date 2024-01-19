import 'package:flutter/cupertino.dart';

import 'app_localizations.dart';

extension ContextDimension on BuildContext {
  double get maxWidth {
    return MediaQuery.of(this).size.width;
  }

  double get maxHeight {
    return MediaQuery.of(this).size.height;
  }

  EdgeInsets get padding => MediaQuery.of(this).padding;

  AppLocalizations get localization => AppLocalizations.of(this)!;
}
