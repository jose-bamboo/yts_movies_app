import 'package:equatable/equatable.dart';
import 'package:ytsapp/models/torrent_model.dart';

class MovieListModel extends Equatable {
  String background_image;
  String background_image_original;
  String date_uploaded;
  int date_uploaded_unix;
  String description_full;
  List<String> genres;
  int id;
  String imdb_code;
  String language;
  String large_cover_image;
  String medium_cover_image;
  String mpa_rating;
  double rating;
  int runtime;
  String slug;
  String small_cover_image;
  String state;
  String summary;
  String synopsis;
  String title;
  String title_english;
  String title_long;
  List<Torrent> torrents;
  String url;
  int year;
  String yt_trailer_code;

  MovieListModel(
      {this.background_image,
      this.background_image_original,
      this.date_uploaded,
      this.date_uploaded_unix,
      this.description_full,
      this.genres,
      this.id,
      this.imdb_code,
      this.language,
      this.large_cover_image,
      this.medium_cover_image,
      this.mpa_rating,
      this.rating,
      this.runtime,
      this.slug,
      this.small_cover_image,
      this.state,
      this.summary,
      this.synopsis,
      this.title,
      this.title_english,
      this.title_long,
      this.torrents,
      this.url,
      this.year,
      this.yt_trailer_code});

  factory MovieListModel.fromJson(Map<String, dynamic> json) {
    return MovieListModel(
      background_image: json['background_image'],
      background_image_original: json['background_image_original'],
      date_uploaded: json['date_uploaded'],
      date_uploaded_unix: json['date_uploaded_unix'],
      description_full: json['description_full'],
      genres:
          json['genres'] != null ? new List<String>.from(json['genres']) : null,
      id: json['id'],
      imdb_code: json['imdb_code'],
      language: json['language'],
      large_cover_image: json['large_cover_image'],
      medium_cover_image: json['medium_cover_image'],
      mpa_rating: json['mpa_rating'],
      rating: json['rating'].toDouble(),
      runtime: json['runtime'],
      slug: json['slug'],
      small_cover_image: json['small_cover_image'],
      state: json['state'],
      summary: json['summary'],
      synopsis: json['synopsis'],
      title: json['title'],
      title_english: json['title_english'],
      title_long: json['title_long'],
      torrents: json['torrents'] != null
          ? (json['torrents'] as List).map((i) => Torrent.fromJson(i)).toList()
          : null,
      url: json['url'],
      year: json['year'],
      yt_trailer_code: json['yt_trailer_code'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['background_image'] = this.background_image;
    data['background_image_original'] = this.background_image_original;
    data['date_uploaded'] = this.date_uploaded;
    data['date_uploaded_unix'] = this.date_uploaded_unix;
    data['description_full'] = this.description_full;
    data['id'] = this.id;
    data['imdb_code'] = this.imdb_code;
    data['language'] = this.language;
    data['large_cover_image'] = this.large_cover_image;
    data['medium_cover_image'] = this.medium_cover_image;
    data['mpa_rating'] = this.mpa_rating;
    data['rating'] = this.rating;
    data['runtime'] = this.runtime;
    data['slug'] = this.slug;
    data['small_cover_image'] = this.small_cover_image;
    data['state'] = this.state;
    data['summary'] = this.summary;
    data['synopsis'] = this.synopsis;
    data['title'] = this.title;
    data['title_english'] = this.title_english;
    data['title_long'] = this.title_long;
    data['url'] = this.url;
    data['year'] = this.year;
    data['yt_trailer_code'] = this.yt_trailer_code;
    if (this.genres != null) {
      data['genres'] = this.genres;
    }
    if (this.torrents != null) {
      data['torrents'] = this.torrents.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [
        background_image,
        background_image_original,
        date_uploaded,
        date_uploaded_unix,
        description_full,
        id,
        imdb_code,
        language,
        large_cover_image,
        medium_cover_image,
        mpa_rating,
        rating,
        runtime,
        slug,
        small_cover_image,
        state,
        summary,
        synopsis,
        title,
        title_english,
        title_long,
        url,
        year,
        yt_trailer_code,
        genres,
        torrents,
      ];
}
