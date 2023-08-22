import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppDiceRolled>((event, emit) {
      emit(const AppState().copyWith(dice: randomizer.nextInt(6) + 1));
    });
  }
}
