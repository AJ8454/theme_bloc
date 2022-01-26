import 'package:flutter/material.dart';
import 'package:theme_bloc/domain/cubit/cubit/theme_cubit.dart';
import 'package:theme_bloc/presentation/views/home/home.view.dart';

class AppRouter {
  late ThemeCubit themeCubit;

  AppRouter() {
    themeCubit = ThemeCubit();
  }

  Route? generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case "/home":
        {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }
    }
  }
}
