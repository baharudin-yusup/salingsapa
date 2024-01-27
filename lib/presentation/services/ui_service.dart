import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';

import '../../core/utils/logger.dart';
import 'navigator_service.dart';
import 'theme_service.dart';

abstract class UiService {
  void showLoading();

  void hideLoading();

  Future<T?> showDialog<T>(DialogData data);
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
      cupertino.showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Stack(
            alignment: Alignment.center,
            children: [
              // Background blur effect
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  color: context.colorScheme().background.withOpacity(0.6),
                ),
              ),
              const cupertino.CupertinoActivityIndicator(),
            ],
          );
        },
      );
    } else {
      material.showDialog(
        barrierDismissible: false,
        useSafeArea: true,
        context: context,
        builder: (context) {
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
                child: material.CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        },
      );
    }
    Logger.print('Show loading finished!');
  }

  @override
  Future<T?> showDialog<T>(DialogData data) async {
    final context = _navigatorService.navigatorKey.currentContext;
    if (context == null) {
      Logger.error('Context is null!', event: 'showing dialog');
      return null;
    }

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

    Widget generateCupertinoButton(DialogActionData data) {
      return cupertino.CupertinoDialogAction(
        isDefaultAction: data.isPositive,
        isDestructiveAction: data.isNegative,
        onPressed: data.onPressed,
        child: Text(data.title),
      );
    }

    if (Platform.isAndroid) {
      // Android specific dialog
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
    } else if (Platform.isIOS) {
      // iOS specific dialog
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
    return null;
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
