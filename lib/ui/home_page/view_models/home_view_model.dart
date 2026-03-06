import 'package:flutter/material.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;

  HomeViewModel({required MovieRepository movieRepository}) : _movieRepository = movieRepository;

  String get movieTitle => _movieRepository.getMovie().title;
  int get movieReleaseYear => _movieRepository.getMovie().releaseYear;
}
