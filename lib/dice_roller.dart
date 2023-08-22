import 'dart:math';

import 'package:basics/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final randomizer = Random();

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-${state.dice}.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                context.read<AppBloc>().add(AppDiceRolled());
              },
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
      },
    );
  }
}
