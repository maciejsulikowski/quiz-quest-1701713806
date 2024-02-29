import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';
import 'package:quiz_quest/app/features/login_page/login_page.dart';
import 'package:quiz_quest/app/injection_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RootCubit>()..start(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RootPage(),
      ),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RootCubit>().state;

    if (state.user == null) {
      return LoginPage();
    }

    return HomePage(
      user: state.user!,
    );
  }
}
