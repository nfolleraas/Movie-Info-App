import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/now_playing_screen/view_models/now_playing_view_model.dart';
import 'package:movie_info_app/ui/now_playing_screen/widgets/movie_card.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key, required NowPlayingViewModel viewModel})
    : _viewModel = viewModel;

  final NowPlayingViewModel _viewModel;

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListenableBuilder(
        listenable: widget._viewModel,
        builder: (context, child) {
          return Center(
            child: switch (widget._viewModel.isLoading) {
              true => const CircularProgressIndicator(),
              false => ListView(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                children: [
                  for (var movie in widget._viewModel.nowPlaying!.movies)
                    MovieCard(movie: movie),
                ],
              ),
            },
          );
        },
      ),
    );
  }
}
