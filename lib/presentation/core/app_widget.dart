import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/presentation/pages/film_overview.dart';
import 'package:films_app/presentation/pages/fim_add.dart';
import 'package:films_app/presentation/pages/sign_in_page.dart';
import 'package:films_app/presentation/pages/splash_page.dart';
import 'package:films_app/presentation/pages/user_films_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class MyApp extends StatelessWidget {
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
            SplashPage.routeName: (context) => SplashPage(),
            SignInPage.routeName: (context) => SignInPage(),
            UserFilmPage.routeName: (context) => UserFilmPage(),
            FilmOverview.routeName: (context) => FilmOverview(),
            FilmAdd.routeName: (context) => FilmAdd(),
            },
            initialRoute: SplashPage.routeName,
          
    ));
  }
}
