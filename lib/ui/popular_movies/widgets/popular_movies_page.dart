import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/popular_movies/view_models/movie_view_model.dart';

class PopularMoviesPage extends StatefulWidget {
  const PopularMoviesPage({
    super.key,
    required this.pageTitle,
    required this.movieViewModel,
  });

  final String pageTitle;
  final MovieViewModel movieViewModel;

  @override
  State<PopularMoviesPage> createState() {
    return _PopularMoviesPageState();
  }
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.movieViewModel,
      builder: (context, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.movieViewModel.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(widget.movieViewModel.releaseYear.toString()),
          ],
        );
      },
    );
  }
}
