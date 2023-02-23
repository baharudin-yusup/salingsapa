import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/contact_list/contact_list_bloc.dart';
import 'package:salingsapa/presentation/blocs/home/home_cubit.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/screens/home/contact_list_screen.dart';

import '../../../injection_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (_) => HomeCubit()),
        BlocProvider<ContactListBloc>(
            create: (_) => sl()..add(const ContactListEvent.refreshPulled())),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
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
            ),
            child: buildFragment(state.currentIndex),
          );
        },
      ),
    );
  }

  Widget buildFragment(int index) {
    switch (index) {
      case 0:
        return const ContactListScreen();
      default:
        return const ContactListScreen();
    }
  }
}
