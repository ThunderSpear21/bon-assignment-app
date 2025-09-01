import 'package:bon_assignment_app/bloc/theme/theme_bloc.dart';
import 'package:bon_assignment_app/bloc/theme/theme_state.dart';
import 'package:bon_assignment_app/screens/home_screen.dart';
import 'package:bon_assignment_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Bon-Assignment',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
