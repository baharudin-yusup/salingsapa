import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saling_sapa/presentation/blocs/setup/setup_bloc.dart';
import 'package:saling_sapa/presentation/components/intuitive_scaffold.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupBloc(),
      child: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) {
          return IntuitiveScaffold(
            appBar: IntuitiveAppBar(
              middle: Text('Enter Your Phone Number'),
              cupertinoTrailing: GestureDetector(
                onTap: null,
                child: Text(
                  'Done',
                  style: TextStyle(
                    color:
                        state.phoneNumber.isEmpty ? Colors.grey : Colors.black,
                  ),
                ),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: const [
                  CupertinoTextField(
                    prefix: Text('+62'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
