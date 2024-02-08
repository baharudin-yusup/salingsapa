import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/contact_list/contact_list_bloc.dart';
import '../../blocs/home/home_cubit.dart';
import '../../components/intuitive_scaffold/intuitive_scaffold.dart';
import '../../utils/dimension.dart';
import '../account/account_screen.dart';
import 'recent_call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      context
          .read<ContactListBloc>()
          .add(const ContactListEvent.refreshPulled());
    }
  }

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
                label: context.localization.recentCalls,
              ),
              IntuitiveBottomNavigationBarItem(
                icon: Icon(
                  state.currentIndex == 1
                      ? Icons.account_circle_rounded
                      : Icons.account_circle_outlined,
                ),
                label: context.localization.account,
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
