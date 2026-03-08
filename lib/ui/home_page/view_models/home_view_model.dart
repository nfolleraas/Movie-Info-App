import 'package:flutter/material.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';
import 'package:movie_info_app/domain/models/movie.dart';
import 'package:movie_info_app/utils/helpers/app_logger_helper.dart';
import 'package:movie_info_app/utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required MovieRepository movieRepository}) : _movieRepository = movieRepository {
    loadMovie(11);
  }

  final MovieRepository _movieRepository;

  bool isLoading = false;
  Movie? movie;

  void loadMovie(int id) async {
    isLoading = true;
    notifyListeners();

    final result = await _movieRepository.getMovieById(id);

    switch(result) {
      case Ok<Movie>():
        movie = result.value;
      case Error<Movie>():
        AppLoggerHelper.error(result.error.toString());
    }

    isLoading = false;
    notifyListeners();
  }
}
