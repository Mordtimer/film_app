// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/auth_bloc/auth_bloc.dart' as _i11;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import 'application/films/film_watcher/film_watcher_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/films/i_film_repository.dart' as _i7;
import 'infrastructure/auth/firabase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i13;
import 'infrastructure/films/film_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i5.IAuthFacade>(() =>
      _i6.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i4.GoogleSignIn>()));
  gh.lazySingleton<_i7.IFilmRepository>(
      () => _i8.FilmReposiory(get<_i9.FirebaseFirestore>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i12.FilmWatcherBloc>(
      () => _i12.FilmWatcherBloc(get<_i7.IFilmRepository>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
