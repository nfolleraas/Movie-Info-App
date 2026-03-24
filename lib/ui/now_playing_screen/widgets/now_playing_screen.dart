import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_info_app/ui/now_playing_screen/view_models/now_playing_view_model.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({
    super.key,
    required pageTitle,
    required NowPlayingViewModel viewModel,
  }) : _pageTitle = pageTitle,
       _viewModel = viewModel;

  final String _pageTitle;
  final NowPlayingViewModel _viewModel;

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget._pageTitle),
      ),
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
                    Center(
                      child: Column(
                        children: [
                          Text(
                            movie.title,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(DateFormat.yMMMd().format(movie.releaseDate)),
                        ],
                      ),
                    ),
                ],
              ),
            },
          );
        },
      ),
    );
  }
}
