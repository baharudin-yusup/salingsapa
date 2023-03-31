import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/home/home_cubit.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/screens/home/account_screen.dart';
import 'package:salingsapa/presentation/screens/home/recent_call_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
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
          child: buildFragment(state.currentIndex),
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
