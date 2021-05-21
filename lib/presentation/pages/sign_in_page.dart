import 'package:films_app/injection.dart';
import 'package:films_app/presentation/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        // ignore: avoid_unnecessary_containers
        body: BlocProvider(
            create: (context) => getIt<SignInBloc>(), child: SignInForm()));
  }
}
