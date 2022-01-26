import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/app/routes/app.routes.dart';
import 'package:theme_bloc/domain/cubit/cubit/theme_cubit.dart';
import 'package:theme_bloc/main.dart';

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
      ],
      child: MyApp(
        router: AppRouter(),
      ),
    );
  }
}
