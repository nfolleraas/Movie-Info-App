import 'package:movie_info_app/domain/models/dates.dart';
import 'package:movie_info_app/domain/models/movie_summary.dart';

class NowPlaying {
  final Dates dates;
  final int page;
  final List<MovieSummary> movies;
  final int totalPages;
  final int totalMovies;

  NowPlaying({
    required this.dates,
    required this.page,
    required this.movies,
    required this.totalPages,
    required this.totalMovies,
  });
}
