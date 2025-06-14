import 'dart:convert';

class GenreMovieListResponse {
  GenreMovieListResponse({
    this.genres,
  });

  GenreMovieListResponse.fromJson(dynamic json) {
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(Genres.fromJson(v));
      });
    }
  }
  List<Genres>? genres;
  GenreMovieListResponse copyWith({
    List<Genres>? genres,
  }) =>
      GenreMovieListResponse(
        genres: genres ?? this.genres,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Genres {
  Genres({
    this.id,
    this.name,
  });

  Genres.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  num? id;
  String? name;
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }


  static Genres fromString(String genreString) {
    final Map<String, dynamic> json = jsonDecode(genreString);
    return Genres.fromJson(json);
  }
}
