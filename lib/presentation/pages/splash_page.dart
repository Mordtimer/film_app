import 'package:auto_route/auto_route.dart';
import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>/*
              AutoRouter.of(context).replace(UserFilmPageRoute()),*/
              Navigator.pushNamed(context, '/filmspage'),

          unauthenticated: (_) =>
              Navigator.pushNamed(context, '/login'),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}