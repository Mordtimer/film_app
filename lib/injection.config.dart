// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/auth_bloc/auth_bloc.dart' as _i10;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'application/films/film_watcher/film_watcher_bloc.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/films/i_film_repository.dart' as _i4;
import 'infrastructure/auth/firabase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FilmWatcherBloc>(
      () => _i3.FilmWatcherBloc(get<_i4.IFilmRepository>()));
  gh.lazySingleton<_i5.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i6.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i5.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
