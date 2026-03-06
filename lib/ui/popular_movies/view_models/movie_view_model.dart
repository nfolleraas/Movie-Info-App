import 'package:flutter/material.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';

class MovieViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;

  MovieViewModel({required MovieRepository movieRepository}) : _movieRepository = movieRepository;

  String get title => _movieRepository.getMovie().title;
  int get releaseYear => _movieRepository.getMovie().releaseYear;
}