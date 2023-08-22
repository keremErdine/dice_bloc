part of 'app_bloc.dart';

enum AppStatus {
  initial,
}

class AppState {
  const AppState(
      {
      this.dice = 1,
      this.status = AppStatus.initial});
  final AppStatus status;
  final int dice;

  AppState copyWith({AppStatus? status, int? dice}) {
    return AppState(
        status: status ?? this.status,
        dice: dice ?? this.dice);
  }
}