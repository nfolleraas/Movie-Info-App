import 'package:flutter/material.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';
import 'package:movie_info_app/domain/models/now_playing.dart';
import 'package:movie_info_app/utils/helpers/app_logger_helper.dart';
import 'package:movie_info_app/utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required MovieRepository movieRepository}) : _movieRepository = movieRepository {
    loadMovies();
  }

  final MovieRepository _movieRepository;

  bool isLoading = false;
  NowPlaying? nowPlaying;

  void loadMovies() async {
    isLoading = true;
    notifyListeners();

    final result = await _movieRepository.getMoviesNowPlaying();

    switch(result) {
      case Ok<NowPlaying>():
        nowPlaying = result.value;
      case Error<NowPlaying>():
        AppLoggerHelper.error(result.error.toString());
    }

    isLoading = false;
    notifyListeners();
  }
}
