import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/home/home_cubit.dart';
import '../../components/intuitive_scaffold.dart';
import 'account_screen.dart';
import 'recent_call_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: Add initialization here
      },
      builder: (context, state) {
        final HomeCubit cubit = context.read();
        return IntuitiveScaffold(
          bottomNavigationBar: IntuitiveBottomNavigationBar(
            currentIndex: state.currentIndex,
            onChanged: cubit.onTabChanged,
            items: [
              IntuitiveBottomNavigationBarItem(
                icon: Icon(
                  state.currentIndex == 0
                      ? Icons.video_call_rounded
                      : Icons.video_call_outlined,
                ),
                label: 'Calls',
              ),
              IntuitiveBottomNavigationBarItem(
                icon: Icon(
                  state.currentIndex == 1
                      ? Icons.account_circle_rounded
                      : Icons.account_circle_outlined,
                ),
                label: 'Account',
              ),
            ],
            tabBuilder: (_, index) => buildFragment(index),
          ),
          builder: (_) => buildFragment(state.currentIndex),
        );
      },
    );
  }

  Widget buildFragment(int index) {
    switch (index) {
      case 0:
        return const RecentCallScreen();
      default:
        return const AccountScreen();
    }
  }
}
