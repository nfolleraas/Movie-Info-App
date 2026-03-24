import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/now_playing_screen/view_models/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required pageTitle,
    required HomeViewModel viewModel,
  }) : _pageTitle = pageTitle,
       _viewModel = viewModel;

  final String _pageTitle;
  final HomeViewModel _viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          // Insert screen contents here
          return Center();
        },
      ),
    );
  }
}