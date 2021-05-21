import 'package:films_app/domain/auth/unique_id.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_desc.dart';
import 'package:films_app/domain/films/film_garde.dart';
import 'package:films_app/domain/films/film_title.dart';
import 'package:firebase/firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'film_dtos.freezed.dart';
part 'film_dtos.g.dart';

@freezed
class FilmItemDto with _$FilmItemDto {
  
  const factory FilmItemDto({
    required String id,
    required String title,
    required String grade,
    required String description,
  }) = _FilmItemDto;

  factory FilmItemDto.from(Film film) {
    return FilmItemDto(
        id: film.id.getOrCrash(),
        title: film.title.getOrCrash(),
        grade: film.grade.getOrCrash(),
        description: film.description.getOrCrash());
  }

  factory FilmItemDto.fromJson(Map<String, dynamic> json) =>
      _$FilmItemDtoFromJson(json);

  Film toDomain() {
    return Film(
        id: UniqueId.fromUniqueString(id),
        title: FilmTitle(title),
        description: FilmDesc(description),
        grade: FilmGrade(grade));
  }

  factory FilmItemDto.fromFirestore(DocumentSnapshot doc) {
    return FilmItemDto.fromJson(doc.data());
  }
}
