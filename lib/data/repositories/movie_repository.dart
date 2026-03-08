import 'package:movie_info_app/data/model/movie_api_model.dart';
import 'package:movie_info_app/data/services/api_service.dart';
import 'package:movie_info_app/domain/models/movie.dart';
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
              title: movieApiModel.title.toString(),
              releaseDate: DateTime.parse(movieApiModel.releaseDate.toString()), 
            ),
          );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}