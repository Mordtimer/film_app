part of 'film_form_bloc.dart';

@freezed
class FilmFormEvent with _$FilmFormEvent {
  const factory FilmFormEvent.initialized(Option<Film> initialFilmOption) =
      _Initialized;
  const factory FilmFormEvent.titleChanged(String title) = _TitleChanged;
  const factory FilmFormEvent.descriptionChanged(String desc) = _DescriptionChanged;
  const factory FilmFormEvent.gradeChanged(String grade) = _GradeChanged;
  const factory FilmFormEvent.saved() = _Saved;
}
