import 'package:films_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:films_app/injection.dart';
import 'package:films_app/presentation/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: BlocProvider(
            create: (context) => getIt<SignInFormBloc>(), child: SignInForm()));
  }
}
