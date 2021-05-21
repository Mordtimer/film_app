import 'package:films_app/presentation/pages/sign_in_page.dart';
import 'package:films_app/presentation/pages/splash_page.dart';
import 'package:films_app/presentation/pages/user_films_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
      ],
      child: MaterialApp(
          title: 'MaterialApp',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(accentColor: Colors.green),
          routes: {
            '/': (context) => SplashPage(),
            '/login': (context) => SignInPage(),
            '/filmspage': (context) => UserFilmPage(),
            },
            initialRoute: '/',
          
    ));
  }
}
