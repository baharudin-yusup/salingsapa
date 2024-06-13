import 'dart:ui';

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/utils/logger.dart';
import '../utils/context_shortcut.dart';
import 'navigator_service.dart';
import 'platform_service.dart';
import 'theme_service.dart';

abstract class UiService {
  void showLoading();

  void hideLoading();

  void resetLoading();

  void showErrorMessage(ErrorData errorData);

  Future<T?> showDialog<T>(DialogData data);

  void showBottomSheet();
}

class UiServiceImpl implements UiService {
  final NavigatorService _navigatorService;
  final PlatformService _platformService;

  bool _isLoading = false;

  UiServiceImpl(this._navigatorService, this._platformService);

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

    switch (_platformService.os) {
      case PlatformOS.iOS:
        _showIosLoading(context);
        break;
      default:
        _showAndroidLoading(context);
        break;
    }
    Logger.print('Show loading finished!');
  }

  void _showIosLoading(BuildContext context) {
    cupertino.showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background blur effect
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  color: context.colorScheme().surface.withOpacity(0.6),
                ),
              ),
              const cupertino.CupertinoActivityIndicator(),
            ],
          ),
        );
      },
    );
  }

  void _showAndroidLoading(BuildContext context) {
    material.showDialog(
      barrierDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: context.colorScheme().surface,
                borderRadius: const BorderRadius.all(
                  Radius.circular(IntuitiveUiConstant.normalRadius),
                ),
              ),
              padding: const EdgeInsets.all(IntuitiveUiConstant.hugeSpace),
              child: const SizedBox.square(
                dimension: IntuitiveUiConstant.hugeSpace,
                child: material.CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Future<T?> showDialog<T>(DialogData data) async {
    final context = _navigatorService.navigatorKey.currentContext;
    if (context == null) {
      Logger.error('Context is null!', event: 'showing dialog');
      return null;
    }

    switch (_platformService.os) {
      case PlatformOS.iOS:
        return await _showCupertinoDialog(context, data);
      default:
        return await _showMaterialDialog(context, data);
    }
  }

  Future<T?> _showCupertinoDialog<T>(
      BuildContext context, DialogData data) async {
    Widget generateCupertinoButton(DialogActionData data) {
      return cupertino.CupertinoDialogAction(
        isDefaultAction: data.isPositive,
        isDestructiveAction: data.isNegative,
        onPressed: data.onPressed,
        child: Text(data.title),
      );
    }

    return await cupertino.showCupertinoDialog<T>(
      context: context,
      builder: (BuildContext context) {
        return cupertino.CupertinoAlertDialog(
          title: data.title != null ? Text(data.title!) : null,
          content: data.description != null ? Text(data.description!) : null,
          actions: [
            for (var action in data.actions) generateCupertinoButton(action)
          ],
        );
      },
    );
  }

  Future<T?> _showMaterialDialog<T>(
      BuildContext context, DialogData data) async {
    Widget generateMaterialButton(DialogActionData data) {
      if (data.isNegative) {
        return material.TextButton(
          onPressed: data.onPressed,
          child: Text(
            data.title,
            style: TextStyle(
              color: context.colorScheme().error,
            ),
          ),
        );
      }

      if (data.isPositive) {
        // TODO: Add positive button
      }

      return material.TextButton(
        onPressed: data.onPressed,
        child: Text(data.title),
      );
    }

    return await material.showDialog<T>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return material.AlertDialog(
          title: data.title != null ? Text(data.title!) : null,
          content: data.description != null ? Text(data.description!) : null,
          actions: [
            for (var action in data.actions) generateMaterialButton(action)
          ],
        );
      },
    );
  }

  @override
  void resetLoading() {
    _isLoading = false;
  }

  @override
  void showErrorMessage(ErrorData errorData) {
    final context = _navigatorService.navigatorKey.currentContext;
    if (context == null) {
      Logger.error('Context is null!', event: 'showing dialog');
      return;
    }

    switch (errorData.type) {
      case ShowErrorType.toast:
        Fluttertoast.showToast(msg: errorData.message);
        return;
      case ShowErrorType.dialog:
        final data = DialogData(
          title:
              errorData.title ?? context.localization.errorMessageDefaultTitle,
          description: errorData.message,
          actions: [
            DialogActionData(
              title: context.localization.ok,
              onPressed: () => _navigatorService.pop(),
            ),
          ],
        );
        showDialog(data);
        break;
    }
  }

  @override
  void showBottomSheet() {
    final context = _navigatorService.navigatorKey.currentContext;
    if (context == null) {
      Logger.error('Context is null!', event: 'showing dialog');
      return;
    }
  }
}

class DialogData {
  final String? title;
  final String? description;
  final List<DialogActionData> actions;

  DialogData({
    this.title,
    this.description,
    required this.actions,
  });
}

class DialogActionData {
  final String title;
  final bool isNegative;
  final bool isPositive;
  final void Function()? onPressed;

  const DialogActionData({
    required this.title,
    required this.onPressed,
    this.isNegative = false,
    this.isPositive = false,
  });
}

class ErrorData {
  final String? title;
  final String message;
  final ShowErrorType type;

  const ErrorData({
    this.title,
    required this.message,
    this.type = ShowErrorType.toast,
  });
}

enum ShowErrorType {
  toast,
  dialog,
}
