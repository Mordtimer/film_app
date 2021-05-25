import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
                //Scaffold.of(context).showSnackBar(SnackBar(content: Text('test')))
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(failure.map(
                            cancelledByUser: (_) => 'canceled',
                            serverError: (_) => 'serwer error',
                            emailAlreadyInUse: (_) =>
                                'This e-mail is already in use!',
                            invalidEmailAndPasswordCombination: (_) =>
                                'Invalid password or mail')),
                      ],
                    )));
              }, (_){
                Navigator.pushNamed(context, '/filmspage');
                context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
              }));
    }, builder: (context, state) {
      return Form(
        autovalidateMode: AutovalidateMode.always,
        child: ListView(
          children: [
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: Text('🎬', style: TextStyle(fontSize: 50))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            orElse: () => null),
                        (_) => null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .password
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            invalidPassword: (_) => 'Password to short',
                            orElse: () => null),
                        (_) => null),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    context.read<SignInFormBloc>().add(const SignInFormEvent
                        .signInWithEmailAndPasswordPressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('Sign In'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<SignInFormBloc>().add(const SignInFormEvent
                        .registerWithEmailAndPasswordPressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('Register'),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('Google'),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  const LinearProgressIndicator()
                ]
              ],
            )
          ],
        ),
      );
    });
  }
}
