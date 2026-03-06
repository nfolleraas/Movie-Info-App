import 'package:movie_info_app/domain/models/movie.dart';

class MovieRepository {
  // Temp: returns hard coded movie object
  Movie getMovie() {
    return Movie(title: 'Star Wars', releaseYear: 1977);
  }
}