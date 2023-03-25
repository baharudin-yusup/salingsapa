import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/recent_call/recent_call_bloc.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold/intuitive_floating_action_button.dart';
import 'package:salingsapa/presentation/utils/app_localizations.dart';

import '../../../domain/entities/call_info.dart';

class RecentCallScreen extends StatelessWidget {
  static const routeName = '/history';

  const RecentCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentCallBloc, RecentCallState>(
        builder: (context, state) {
      return IntuitiveScaffold(
        appBar: IntuitiveAppBar(
          middle: Text(AppLocalizations.of(context)!.recentCalls),
          materialActions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        floatingActionButton: IntuitiveFloatingActionButton(
            label: AppLocalizations.of(context)!.newCall,
            size: IntuitiveFloatingActionButtonSize.extended,
            icon: const Icon(Icons.video_call_outlined),
            onPressed: () {
              context
                  .read<RecentCallBloc>()
                  .add(const RecentCallEvent.newCallTapped());
            }),
        child: RefreshIndicator(
          onRefresh: () async {},
          child: state.calls.isEmpty ? buildEmptyUi() : buildList(state.calls),
        ),
      );
    });
  }

  Widget buildEmptyUi() {
    return Builder(builder: (context) {
      return ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 2.5,
        ),
        children: [
          Center(
            child: Text(AppLocalizations.of(context)!.nRecentCalls(0)),
          ),
        ],
      );
    });
  }

  Widget buildList(List<CallInfo> calls) {
    return ListView.separated(
      itemBuilder: (context, index) => SizedBox(),
      separatorBuilder: buildSeparator,
      itemCount: calls.length,
    );
  }

  Widget buildSeparator(BuildContext context, int index) {
    return const SizedBox();
  }
}
