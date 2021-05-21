import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(listener: (context, state) {
      state.authFailureOrSuccesOption.fold(
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
              }, (r) => null));
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
                    .read<SignInBloc>()
                    .add(SignInFromEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInBloc>()
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
                    .read<SignInBloc>()
                    .add(SignInFromEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<SignInBloc>()
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
                    context.read<SignInBloc>().add(const SignInFromEvent
                        .signInWithEmailAndPasswordPressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('SIGN IN'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<SignInBloc>().add(const SignInFromEvent
                        .registerWithEmailAndPasswordPressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('REGISTER'),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInFromEvent.signInWithGooglePressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text('Google'),
                ),
                if (state.isSubmiting) ...[
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
