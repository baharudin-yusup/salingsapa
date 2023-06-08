import 'package:flutter/cupertino.dart';

extension ContextDimension on BuildContext {
  double get maxWidth {
    return MediaQuery.of(this).size.width;
  }

  double get maxHeight {
    return MediaQuery.of(this).size.height;
  }
}
