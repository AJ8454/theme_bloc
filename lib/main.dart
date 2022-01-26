import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/app/routes/app.routes.dart';
import 'package:theme_bloc/custom_bloc_provider.dart';
import 'package:theme_bloc/domain/cubit/cubit/theme_cubit.dart';

void main() {
  runApp(const Core());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    this.router,
  }) : super(key: key);

  final AppRouter? router; 

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: "/home",
      onGenerateRoute: router!.generateRoute,
    );
  }
}
