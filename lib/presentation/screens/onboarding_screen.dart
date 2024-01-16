import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../blocs/introduction/introduction_cubit.dart';
import '../services/theme_service.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroductionCubit, IntroductionState>(
      builder: (context, state) {
        final IntroductionCubit cubit = context.read();
        return IntroductionScreen(
          pages: buildPages(context),
          skip: Text(AppLocalizations.of(context)!.skip),
          next: Icon(Icons.adaptive.arrow_forward_rounded),
          done: Text(AppLocalizations.of(context)!.done),
          onDone: cubit.onDoneButtonPressed,
          showDoneButton: true,
          showSkipButton: true,
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: context.colorScheme().secondary,
            color: context.colorScheme().secondary.withOpacity(0.3),
            spacing: const EdgeInsets.symmetric(
                horizontal: IntuitiveUiConstant.tinySpace),
            activeShape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(IntuitiveUiConstant.normalRadius)),
          ),
        );
      },
    );
  }

  List<PageViewModel> buildPages(BuildContext context) {
    final decoration = PageDecoration(
      imageFlex: 7,
      bodyFlex: 6,
      imagePadding: const EdgeInsets.all(IntuitiveUiConstant.largeSpace),
      titleTextStyle: context.textTheme().titleLarge!,
      titlePadding: EdgeInsets.zero,
      bodyPadding: const EdgeInsets.all(IntuitiveUiConstant.largeSpace),
      pageColor: context.colorScheme().background,
    );

    return [
      PageViewModel(
        title: 'Welcome to Salingsapa!',
        body:
            'A simple, safe and reliable way for the deaf to communicate with those around them',
        image: const FlutterLogo(size: 150),
        decoration: decoration,
      ),
      PageViewModel(
        title: 'Lorem ipsum 1',
        body:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document.',
        image: const FlutterLogo(size: 150),
        decoration: decoration,
      ),
      PageViewModel(
        title: 'Lorem ipsum 2',
        body:
            'It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage.',
        image: const FlutterLogo(size: 150),
        decoration: decoration,
      ),
    ];
  }
}
