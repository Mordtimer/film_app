// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'film_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmWatcherEventTearOff {
  const _$FilmWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _FilmsRecived filmsRecived(Either<FilmFailure, List<Film>> failureOrFilms) {
    return _FilmsRecived(
      failureOrFilms,
    );
  }
}

/// @nodoc
const $FilmWatcherEvent = _$FilmWatcherEventTearOff();

/// @nodoc
mixin _$FilmWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)
        filmsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)?
        filmsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_FilmsRecived value) filmsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_FilmsRecived value)? filmsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmWatcherEventCopyWith<$Res> {
  factory $FilmWatcherEventCopyWith(
          FilmWatcherEvent value, $Res Function(FilmWatcherEvent) then) =
      _$FilmWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilmWatcherEventCopyWithImpl<$Res>
    implements $FilmWatcherEventCopyWith<$Res> {
  _$FilmWatcherEventCopyWithImpl(this._value, this._then);

  final FilmWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(FilmWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$FilmWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'FilmWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)
        filmsRecived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)?
        filmsRecived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_FilmsRecived value) filmsRecived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_FilmsRecived value)? filmsRecived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements FilmWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$FilmsRecivedCopyWith<$Res> {
  factory _$FilmsRecivedCopyWith(
          _FilmsRecived value, $Res Function(_FilmsRecived) then) =
      __$FilmsRecivedCopyWithImpl<$Res>;
  $Res call({Either<FilmFailure, List<Film>> failureOrFilms});
}

/// @nodoc
class __$FilmsRecivedCopyWithImpl<$Res>
    extends _$FilmWatcherEventCopyWithImpl<$Res>
    implements _$FilmsRecivedCopyWith<$Res> {
  __$FilmsRecivedCopyWithImpl(
      _FilmsRecived _value, $Res Function(_FilmsRecived) _then)
      : super(_value, (v) => _then(v as _FilmsRecived));

  @override
  _FilmsRecived get _value => super._value as _FilmsRecived;

  @override
  $Res call({
    Object? failureOrFilms = freezed,
  }) {
    return _then(_FilmsRecived(
      failureOrFilms == freezed
          ? _value.failureOrFilms
          : failureOrFilms // ignore: cast_nullable_to_non_nullable
              as Either<FilmFailure, List<Film>>,
    ));
  }
}

/// @nodoc

class _$_FilmsRecived implements _FilmsRecived {
  const _$_FilmsRecived(this.failureOrFilms);

  @override
  final Either<FilmFailure, List<Film>> failureOrFilms;

  @override
  String toString() {
    return 'FilmWatcherEvent.filmsRecived(failureOrFilms: $failureOrFilms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilmsRecived &&
            (identical(other.failureOrFilms, failureOrFilms) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrFilms, failureOrFilms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrFilms);

  @JsonKey(ignore: true)
  @override
  _$FilmsRecivedCopyWith<_FilmsRecived> get copyWith =>
      __$FilmsRecivedCopyWithImpl<_FilmsRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)
        filmsRecived,
  }) {
    return filmsRecived(failureOrFilms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<FilmFailure, List<Film>> failureOrFilms)?
        filmsRecived,
    required TResult orElse(),
  }) {
    if (filmsRecived != null) {
      return filmsRecived(failureOrFilms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_FilmsRecived value) filmsRecived,
  }) {
    return filmsRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_FilmsRecived value)? filmsRecived,
    required TResult orElse(),
  }) {
    if (filmsRecived != null) {
      return filmsRecived(this);
    }
    return orElse();
  }
}

abstract class _FilmsRecived implements FilmWatcherEvent {
  const factory _FilmsRecived(Either<FilmFailure, List<Film>> failureOrFilms) =
      _$_FilmsRecived;

  Either<FilmFailure, List<Film>> get failureOrFilms =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilmsRecivedCopyWith<_FilmsRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilmWatcherStateTearOff {
  const _$FilmWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSucces loadSucces(List<Film> film) {
    return _LoadSucces(
      film,
    );
  }

  _LoadFailure loadFailure(FilmFailure filmFailure) {
    return _LoadFailure(
      filmFailure,
    );
  }
}

/// @nodoc
const $FilmWatcherState = _$FilmWatcherStateTearOff();

/// @nodoc
mixin _$FilmWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Film> film) loadSucces,
    required TResult Function(FilmFailure filmFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Film> film)? loadSucces,
    TResult Function(FilmFailure filmFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmWatcherStateCopyWith<$Res> {
  factory $FilmWatcherStateCopyWith(
          FilmWatcherState value, $Res Function(FilmWatcherState) then) =
      _$FilmWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilmWatcherStateCopyWithImpl<$Res>
    implements $FilmWatcherStateCopyWith<$Res> {
  _$FilmWatcherStateCopyWithImpl(this._value, this._then);

  final FilmWatcherState _value;
  // ignore: unused_field
  final $Res Function(FilmWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FilmWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FilmWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Film> film) loadSucces,
    required TResult Function(FilmFailure filmFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Film> film)? loadSucces,
    TResult Function(FilmFailure filmFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilmWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$FilmWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'FilmWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Film> film) loadSucces,
    required TResult Function(FilmFailure filmFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Film> film)? loadSucces,
    TResult Function(FilmFailure filmFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements FilmWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccesCopyWith<$Res> {
  factory _$LoadSuccesCopyWith(
          _LoadSucces value, $Res Function(_LoadSucces) then) =
      __$LoadSuccesCopyWithImpl<$Res>;
  $Res call({List<Film> film});
}

/// @nodoc
class __$LoadSuccesCopyWithImpl<$Res>
    extends _$FilmWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccesCopyWith<$Res> {
  __$LoadSuccesCopyWithImpl(
      _LoadSucces _value, $Res Function(_LoadSucces) _then)
      : super(_value, (v) => _then(v as _LoadSucces));

  @override
  _LoadSucces get _value => super._value as _LoadSucces;

  @override
  $Res call({
    Object? film = freezed,
  }) {
    return _then(_LoadSucces(
      film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ));
  }
}

/// @nodoc

class _$_LoadSucces implements _LoadSucces {
  const _$_LoadSucces(this.film);

  @override
  final List<Film> film;

  @override
  String toString() {
    return 'FilmWatcherState.loadSucces(film: $film)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSucces &&
            (identical(other.film, film) ||
                const DeepCollectionEquality().equals(other.film, film)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(film);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      __$LoadSuccesCopyWithImpl<_LoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Film> film) loadSucces,
    required TResult Function(FilmFailure filmFailure) loadFailure,
  }) {
    return loadSucces(film);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Film> film)? loadSucces,
    TResult Function(FilmFailure filmFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(film);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(this);
    }
    return orElse();
  }
}

abstract class _LoadSucces implements FilmWatcherState {
  const factory _LoadSucces(List<Film> film) = _$_LoadSucces;

  List<Film> get film => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FilmFailure filmFailure});

  $FilmFailureCopyWith<$Res> get filmFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FilmWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? filmFailure = freezed,
  }) {
    return _then(_LoadFailure(
      filmFailure == freezed
          ? _value.filmFailure
          : filmFailure // ignore: cast_nullable_to_non_nullable
              as FilmFailure,
    ));
  }

  @override
  $FilmFailureCopyWith<$Res> get filmFailure {
    return $FilmFailureCopyWith<$Res>(_value.filmFailure, (value) {
      return _then(_value.copyWith(filmFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.filmFailure);

  @override
  final FilmFailure filmFailure;

  @override
  String toString() {
    return 'FilmWatcherState.loadFailure(filmFailure: $filmFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.filmFailure, filmFailure) ||
                const DeepCollectionEquality()
                    .equals(other.filmFailure, filmFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filmFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Film> film) loadSucces,
    required TResult Function(FilmFailure filmFailure) loadFailure,
  }) {
    return loadFailure(filmFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Film> film)? loadSucces,
    TResult Function(FilmFailure filmFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(filmFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucces value) loadSucces,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucces value)? loadSucces,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements FilmWatcherState {
  const factory _LoadFailure(FilmFailure filmFailure) = _$_LoadFailure;

  FilmFailure get filmFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
