import 'package:movie_info_app/data/model/belongs_to_collection_api_model.dart';
import 'package:movie_info_app/data/model/genres_api_model.dart';
import 'package:movie_info_app/data/model/production_companies_api_model.dart';
import 'package:movie_info_app/data/model/production_contries_api_model.dart';
import 'package:movie_info_app/data/model/spoken_languages_api_model.dart';

class MovieApiModel {
  bool? adult;
  String? backdropPath;
  BelongsToCollectionApiModel? belongsToCollection;
  int? budget;
  List<GenresApiModel>? genres;
  String? homepage;
  int? id;
  String? imdbId;
  List<String>? originCountry;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  List<ProductionCompaniesApiModel>? productionCompanies;
  List<ProductionCountriesApiModel>? productionCountries;
  String? releaseDate;
  int? revenue;
  int? runtime;
  List<SpokenLanguagesApiModel>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieApiModel({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  MovieApiModel.fromJson(Map<String, dynamic> json) {
    adult = json["adult"];
    backdropPath = json["backdrop_path"];
    belongsToCollection = json["belongs_to_collection"] == null
        ? null
        : BelongsToCollectionApiModel.fromJson(json["belongs_to_collection"]);
    budget = json["budget"];
    genres = json["genres"] == null
        ? null
        : (json["genres"] as List).map((e) => GenresApiModel.fromJson(e)).toList();
    homepage = json["homepage"];
    id = json["id"];
    imdbId = json["imdb_id"];
    originCountry = json["origin_country"] == null
        ? null
        : List<String>.from(json["origin_country"]);
    originalLanguage = json["original_language"];
    originalTitle = json["original_title"];
    overview = json["overview"];
    popularity = json["popularity"];
    posterPath = json["poster_path"];
    productionCompanies = json["production_companies"] == null
        ? null
        : (json["production_companies"] as List)
              .map((e) => ProductionCompaniesApiModel.fromJson(e))
              .toList();
    productionCountries = json["production_countries"] == null
        ? null
        : (json["production_countries"] as List)
              .map((e) => ProductionCountriesApiModel.fromJson(e))
              .toList();
    releaseDate = json["release_date"];
    revenue = json["revenue"];
    runtime = json["runtime"];
    spokenLanguages = json["spoken_languages"] == null
        ? null
        : (json["spoken_languages"] as List)
              .map((e) => SpokenLanguagesApiModel.fromJson(e))
              .toList();
    status = json["status"];
    tagline = json["tagline"];
    title = json["title"];
    video = json["video"];
    voteAverage = json["vote_average"];
    voteCount = json["vote_count"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["adult"] = adult;
    _data["backdrop_path"] = backdropPath;
    if (belongsToCollection != null) {
      _data["belongs_to_collection"] = belongsToCollection?.toJson();
    }
    _data["budget"] = budget;
    if (genres != null) {
      _data["genres"] = genres?.map((e) => e.toJson()).toList();
    }
    _data["homepage"] = homepage;
    _data["id"] = id;
    _data["imdb_id"] = imdbId;
    if (originCountry != null) {
      _data["origin_country"] = originCountry;
    }
    _data["original_language"] = originalLanguage;
    _data["original_title"] = originalTitle;
    _data["overview"] = overview;
    _data["popularity"] = popularity;
    _data["poster_path"] = posterPath;
    if (productionCompanies != null) {
      _data["production_companies"] = productionCompanies
          ?.map((e) => e.toJson())
          .toList();
    }
    if (productionCountries != null) {
      _data["production_countries"] = productionCountries
          ?.map((e) => e.toJson())
          .toList();
    }
    _data["release_date"] = releaseDate;
    _data["revenue"] = revenue;
    _data["runtime"] = runtime;
    if (spokenLanguages != null) {
      _data["spoken_languages"] = spokenLanguages
          ?.map((e) => e.toJson())
          .toList();
    }
    _data["status"] = status;
    _data["tagline"] = tagline;
    _data["title"] = title;
    _data["video"] = video;
    _data["vote_average"] = voteAverage;
    _data["vote_count"] = voteCount;
    return _data;
  }
}
