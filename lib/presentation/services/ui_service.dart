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
        context: context,
        builder: _uiLoading,
      );
    } else {
      material
          .showDialog(
            barrierDismissible: true,
            useSafeArea: true,
            context: context,
            builder: _materialUiLoading,
          )
          .then((_) => _isLoading = false);
    }
    Logger.print('Show loading finished!');
  }

  Widget _uiLoading(BuildContext context) {
    return material.Dialog(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(IntuitiveUiConstant.largeSpace),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: material.Theme.of(context)
                .colorScheme
                .background
                .withOpacity(0.2),
          ),
          child: const SizedBox.square(
            dimension: 20,
            child: material.CircularProgressIndicator.adaptive(),
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
          child: material.CircularProgressIndicator.adaptive(),
        ),
      ),
    );
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
  final bool hasDefaultOnPressed;
  final void Function()? _onPressed;

  void Function()? get onPressed =>
      _onPressed ?? (hasDefaultOnPressed ? () {} : null);

  const DialogActionData({
    required this.title,
    void Function()? onPressed,
    this.isNegative = false,
    this.isPositive = false,
    this.hasDefaultOnPressed = true,
  }) : _onPressed = onPressed;
}
