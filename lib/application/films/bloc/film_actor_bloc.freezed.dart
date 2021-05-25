// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'film_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmActorEventTearOff {
  const _$FilmActorEventTearOff();

  _Deleted deleted(Film film) {
    return _Deleted(
      film,
    );
  }
}

/// @nodoc
const $FilmActorEvent = _$FilmActorEventTearOff();

/// @nodoc
mixin _$FilmActorEvent {
  Film get film => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Film film) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Film film)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmActorEventCopyWith<FilmActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmActorEventCopyWith<$Res> {
  factory $FilmActorEventCopyWith(
          FilmActorEvent value, $Res Function(FilmActorEvent) then) =
      _$FilmActorEventCopyWithImpl<$Res>;
  $Res call({Film film});

  $FilmCopyWith<$Res> get film;
}

/// @nodoc
class _$FilmActorEventCopyWithImpl<$Res>
    implements $FilmActorEventCopyWith<$Res> {
  _$FilmActorEventCopyWithImpl(this._value, this._then);

  final FilmActorEvent _value;
  // ignore: unused_field
  final $Res Function(FilmActorEvent) _then;

  @override
  $Res call({
    Object? film = freezed,
  }) {
    return _then(_value.copyWith(
      film: film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film,
    ));
  }

  @override
  $FilmCopyWith<$Res> get film {
    return $FilmCopyWith<$Res>(_value.film, (value) {
      return _then(_value.copyWith(film: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $FilmActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Film film});

  @override
  $FilmCopyWith<$Res> get film;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$FilmActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? film = freezed,
  }) {
    return _then(_Deleted(
      film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.film);

  @override
  final Film film;

  @override
  String toString() {
    return 'FilmActorEvent.deleted(film: $film)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.film, film) ||
                const DeepCollectionEquality().equals(other.film, film)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(film);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Film film) deleted,
  }) {
    return deleted(film);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Film film)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(film);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements FilmActorEvent {
  const factory _Deleted(Film film) = _$_Deleted;

  @override
  Film get film => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilmActorStateTearOff {
  const _$FilmActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  DeleteFailure deleteFailure(FilmFailure filmFailure) {
    return DeleteFailure(
      filmFailure,
    );
  }

  _DeleteSuccess deleteSucces() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
const $FilmActorState = _$FilmActorStateTearOff();

/// @nodoc
mixin _$FilmActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FilmFailure filmFailure) deleteFailure,
    required TResult Function() deleteSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FilmFailure filmFailure)? deleteFailure,
    TResult Function()? deleteSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmActorStateCopyWith<$Res> {
  factory $FilmActorStateCopyWith(
          FilmActorState value, $Res Function(FilmActorState) then) =
      _$FilmActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilmActorStateCopyWithImpl<$Res>
    implements $FilmActorStateCopyWith<$Res> {
  _$FilmActorStateCopyWithImpl(this._value, this._then);

  final FilmActorState _value;
  // ignore: unused_field
  final $Res Function(FilmActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FilmActorStateCopyWithImpl<$Res>
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
    return 'FilmActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(FilmFailure filmFailure) deleteFailure,
    required TResult Function() deleteSucces,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FilmFailure filmFailure)? deleteFailure,
    TResult Function()? deleteSucces,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucces,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucces,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilmActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$FilmActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'FilmActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FilmFailure filmFailure) deleteFailure,
    required TResult Function() deleteSucces,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FilmFailure filmFailure)? deleteFailure,
    TResult Function()? deleteSucces,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucces,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucces,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FilmActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;
  $Res call({FilmFailure filmFailure});

  $FilmFailureCopyWith<$Res> get filmFailure;
}

/// @nodoc
class _$DeleteFailureCopyWithImpl<$Res>
    extends _$FilmActorStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object? filmFailure = freezed,
  }) {
    return _then(DeleteFailure(
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

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.filmFailure);

  @override
  final FilmFailure filmFailure;

  @override
  String toString() {
    return 'FilmActorState.deleteFailure(filmFailure: $filmFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.filmFailure, filmFailure) ||
                const DeepCollectionEquality()
                    .equals(other.filmFailure, filmFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filmFailure);

  @JsonKey(ignore: true)
  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FilmFailure filmFailure) deleteFailure,
    required TResult Function() deleteSucces,
  }) {
    return deleteFailure(filmFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FilmFailure filmFailure)? deleteFailure,
    TResult Function()? deleteSucces,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(filmFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucces,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucces,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements FilmActorState {
  const factory DeleteFailure(FilmFailure filmFailure) = _$DeleteFailure;

  FilmFailure get filmFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$FilmActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'FilmActorState.deleteSucces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FilmFailure filmFailure) deleteFailure,
    required TResult Function() deleteSucces,
  }) {
    return deleteSucces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FilmFailure filmFailure)? deleteFailure,
    TResult Function()? deleteSucces,
    required TResult orElse(),
  }) {
    if (deleteSucces != null) {
      return deleteSucces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucces,
  }) {
    return deleteSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucces,
    required TResult orElse(),
  }) {
    if (deleteSucces != null) {
      return deleteSucces(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements FilmActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
