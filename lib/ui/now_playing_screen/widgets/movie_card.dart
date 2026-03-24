import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/models/movie_summary.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final MovieSummary movie;

  @override
  Widget build(BuildContext context) {
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network('https://image.tmdb.org/t/p/original${movie.posterPath}'),
          ],
        ),
      );
  }
}