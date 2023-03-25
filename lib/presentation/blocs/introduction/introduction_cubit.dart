import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:salingsapa/presentation/screens/setup_screen.dart';
import 'package:salingsapa/presentation/services/ui_service.dart';

import '../../../domain/usecases/usecases.dart';
import '../../services/navigator_service.dart';

part 'introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  final SetIsFirstLaunchApp _setIsFirstLaunchApp;
  final NavigatorService _navigatorService;
  final UiService _uiService;

  IntroductionCubit(
    this._setIsFirstLaunchApp,
    this._navigatorService,
    this._uiService,
  ) : super(IntroductionInitial());

  void onDoneButtonPressed() async {
    _uiService.showLoading();
    await _setIsFirstLaunchApp(false);
    _uiService.hideLoading();
    _navigatorService.pushNamedAndRemoveUntil(
        SetupScreen.routeName, (route) => false);
  }
}
