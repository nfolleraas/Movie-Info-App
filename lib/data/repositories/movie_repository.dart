import 'package:movie_info_app/data/model/dates_api_model.dart';
import 'package:movie_info_app/data/model/genres_api_model.dart';
import 'package:movie_info_app/data/model/movie_api_model.dart';
import 'package:movie_info_app/data/model/movie_summary_api_model.dart';
import 'package:movie_info_app/data/model/now_playing_api_model.dart';
import 'package:movie_info_app/data/model/production_companies_api_model.dart';
import 'package:movie_info_app/data/model/production_contries_api_model.dart';
import 'package:movie_info_app/data/model/spoken_languages_api_model.dart';
import 'package:movie_info_app/data/services/api_service.dart';
import 'package:movie_info_app/domain/models/dates.dart';
import 'package:movie_info_app/domain/models/genre.dart';
import 'package:movie_info_app/domain/models/movie.dart';
import 'package:movie_info_app/domain/models/movie_summary.dart';
import 'package:movie_info_app/domain/models/now_playing.dart';
import 'package:movie_info_app/domain/models/production_company.dart';
import 'package:movie_info_app/domain/models/production_country.dart';
import 'package:movie_info_app/domain/models/spoken_language.dart';
import 'package:movie_info_app/utils/result.dart';

class MovieRepository {
  MovieRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<Result<Movie>> getMovieById(int id) async {
    try {
      final movieResult = await _apiClient.getMovieById(id);

      switch (movieResult) {
        case Error<MovieApiModel>():
          return Result.error(movieResult.error);
        case Ok<MovieApiModel>():
          final movieApiModel = movieResult.value;
          return Result.ok(
            Movie(
              title: movieApiModel.title!,
              releaseDate: DateTime.parse(movieApiModel.releaseDate!),
              id: movieApiModel.id!,
              isAdult: movieApiModel.adult!,
              backdropPath: movieApiModel.backdropPath!,
              budget: movieApiModel.budget!.toDouble(),
              genres: _toGenre(movieApiModel.genres),
              homepageUrl: movieApiModel.homepage!,
              imdbId: movieApiModel.imdbId!,
              originCountry: movieApiModel.originCountry!,
              spokenLanguages: _toSpokenLanguage(movieApiModel.spokenLanguages),
              originalLanguage: movieApiModel.originalLanguage!,
              productionCompanies: _toProductionCompany(
                movieApiModel.productionCompanies,
              ),
              productionCountries: _toProductionCountry(
                movieApiModel.productionCountries,
              ),
              originalTitle: movieApiModel.originalTitle!,
              overview: movieApiModel.overview!,
              popularity: movieApiModel.popularity!,
              posterPath: movieApiModel.posterPath!,
              revenue: movieApiModel.revenue!.toDouble(),
              runtime: movieApiModel.runtime!,
              status: movieApiModel.status!,
              tagline: movieApiModel.tagline!,
              voteAverage: movieApiModel.voteAverage!,
              voteCount: movieApiModel.voteCount!,
            ),
          );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<NowPlaying>> getMoviesNowPlaying() async {
    try {
      final nowPlayingResult = await _apiClient.getMoviesNowPlaying();

      switch (nowPlayingResult) {
        case Error<NowPlayingApiModel>():
          return Result.error(nowPlayingResult.error);
        case Ok<NowPlayingApiModel>():
          final nowPlayingApiModel = nowPlayingResult.value;
          return Result.ok(
            NowPlaying(
              dates: _toDates(nowPlayingApiModel.dates),
              page: nowPlayingApiModel.page!,
              movies: _toMovieSummary(nowPlayingApiModel.results),
              totalPages: nowPlayingApiModel.totalPages!,
              totalMovies: nowPlayingApiModel.totalResults!,
            ),
          );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  // Helper methods
  List<Genre> _toGenre(List<GenresApiModel>? genres) {
    return genres?.map((e) => Genre(id: e.id!, name: e.name!)).toList() ?? [];
  }

  List<SpokenLanguage> _toSpokenLanguage(
    List<SpokenLanguagesApiModel>? spokenLanguageApiModels,
  ) {
    return spokenLanguageApiModels
            ?.map(
              (e) => SpokenLanguage(
                englishName: e.englishName!,
                iso6391: e.iso6391!,
                name: e.name!,
              ),
            )
            .toList() ??
        [];
  }

  List<ProductionCompany> _toProductionCompany(
    List<ProductionCompaniesApiModel>? productionCompanyApiModels,
  ) {
    return productionCompanyApiModels
            ?.map(
              (e) => ProductionCompany(
                id: e.id!,
                logoPath: e.logoPath!,
                name: e.name!,
                originCountry: e.originCountry!,
              ),
            )
            .toList() ??
        [];
  }

  List<ProductionCountry> _toProductionCountry(
    List<ProductionCountriesApiModel>? productionCountryApiModels,
  ) {
    return productionCountryApiModels
            ?.map(
              (e) => ProductionCountry(iso31661: e.iso31661!, name: e.name!),
            )
            .toList() ??
        [];
  }

  Dates _toDates(DatesApiModel? datesApiModel) {
    return Dates(
      maximum: datesApiModel?.maximum != null
          ? DateTime.parse(datesApiModel!.maximum!)
          : null,
      minimum: datesApiModel?.minimum != null
          ? DateTime.parse(datesApiModel!.minimum!)
          : null,
    );
  }

  List<MovieSummary> _toMovieSummary(
    List<MovieSummaryApiModel>? movieSummaryApiModels,
  ) {
    return movieSummaryApiModels?.map(
      (e) => MovieSummary(
        isAdult: e.adult!,
        backdropPath: e.backdropPath!,
        genreIds: e.genreIds!,
        id: e.id!,
        originalLanguage: e.originalLanguage!,
        originalTitle: e.originalTitle!,
        overview: e.overview!,
        popularity: e.popularity!,
        posterPath: e.posterPath!,
        releaseDate: DateTime.parse(e.releaseDate!),
        title: e.title!,
        voteAverage: e.voteAverage!,
        voteCount: e.voteCount!,
      ),
    ).toList() ?? [];
  }
}
