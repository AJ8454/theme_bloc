import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/domain/cubit/cubit/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            if (state is ThemeDark) {
              return const Text("Theme is Dark");
            }
            if (state is ThemeLight) {
              return const Text("Theme is Light");
            }
            return const Text('');
          },
        ),
      ),
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          if (state is ThemeDark) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Theme is ThemeDark")));
          }
          if (state is ThemeLight) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Theme is ThemeLight")));
          }
        },
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              themeCubit.toggleTheme();
            },
            child: const Text("Toggle theme"),
          ),
        ),
      ),
    );
  }
}
