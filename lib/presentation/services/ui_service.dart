import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';

import '../../core/utils/logger.dart';

abstract class UiService {
  void showLoading();

  void hideLoading();
}

class UiServiceImpl implements UiService {
  final NavigatorService _navigatorService;

  bool _isLoading = false;

  UiServiceImpl(this._navigatorService);

  @override
  void hideLoading() {
    final context = _navigatorService.navigatorKey.currentContext;

    if (context == null || !_isLoading) {
      return;
    }
    _isLoading = false;

    _navigatorService.pop();
  }

  @override
  void showLoading() {
    final context = _navigatorService.navigatorKey.currentContext;

    if (context == null) {
      Logger.error('Context is null!', event: 'showing loading');

      return;
    }

    if (_isLoading) {
      return;
    }
    _isLoading = true;

    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: _uiLoading,
      );
    } else {
      showDialog(
        barrierDismissible: true,
        useSafeArea: true,
        context: context,
        builder: _materialUiLoading,
      ).then((_) => _isLoading = false);
    }
    Logger.print('Show loading finished!');
  }

  Widget _uiLoading(BuildContext context) {
    return Dialog(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(IntuitiveUiConstant.largeSpace),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: Theme.of(context).colorScheme.background.withOpacity(0.2),
          ),
          child: const SizedBox.square(
            dimension: 20,
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }

  Widget _materialUiLoading(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme().background,
          borderRadius: const BorderRadius.all(
            Radius.circular(IntuitiveUiConstant.normalRadius),
          ),
        ),
        padding: const EdgeInsets.all(IntuitiveUiConstant.hugeSpace),
        child: const SizedBox.square(
          dimension: IntuitiveUiConstant.hugeSpace,
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
