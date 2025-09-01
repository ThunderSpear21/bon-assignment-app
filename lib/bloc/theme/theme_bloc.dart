import 'package:bon_assignment_app/bloc/theme/theme_event.dart';
import 'package:bon_assignment_app/bloc/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(ThemeMode.light)) {
    on<ThemeToggled>((event, emit) {
      if (state.themeMode == ThemeMode.light) {
        emit(const ThemeState(ThemeMode.dark));
      } else {
        emit(const ThemeState(ThemeMode.light));
      }
    });
  }
}
