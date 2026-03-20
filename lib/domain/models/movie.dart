import 'package:movie_info_app/domain/models/genre.dart';
import 'package:movie_info_app/domain/models/production_company.dart';
import 'package:movie_info_app/domain/models/production_country.dart';
import 'package:movie_info_app/domain/models/spoken_language.dart';

class Movie {
  final int id;
  final String title;
  final DateTime releaseDate;
  final bool isAdult;
  final String backdropPath;
  final double budget;
  final List<Genre> genres;
  final String homepageUrl;
  final String imdbId;
  final List<String> originCountry;
  final String originalLanguage;
  final List<SpokenLanguage> spokenLanguages;
  final String originalTitle;
  final List<ProductionCompany> productionCompanies;
  final List<ProductionCountry> productionCountries;
  final String overview;
  final double popularity;
  final String posterPath;
  final double revenue;
  final int runtime;
  final String status;
  final String tagline;
  final double voteAverage;
  final int voteCount;

  Movie({
    required this.title,
    required this.releaseDate,
    required this.id,
    required this.isAdult,
    required this.backdropPath,
    required this.budget,
    required this.genres,
    required this.homepageUrl,
    required this.imdbId,
    required this.originCountry,
    required this.spokenLanguages,
    required this.originalLanguage,
    required this.productionCompanies,
    required this.productionCountries,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.revenue,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.voteAverage,
    required this.voteCount,
  });
}
