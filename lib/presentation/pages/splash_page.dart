import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/presentation/pages/sign_in_page.dart';
import 'package:films_app/presentation/pages/user_films_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              Navigator.pushNamedAndRemoveUntil(context, UserFilmPage.routeName, (route) => false),

          unauthenticated: (_) =>
              Navigator.pushNamedAndRemoveUntil(context, SignInPage.routeName, (route) => false),
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