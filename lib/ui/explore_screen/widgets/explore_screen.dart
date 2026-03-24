import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/explore_screen/view_models/explore_view_model.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key, required ExploreViewModel viewModel})
    : _viewModel = viewModel;

  final ExploreViewModel _viewModel;

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListenableBuilder(
        listenable: widget._viewModel,
        builder: (context, child) {
          // Insert screen contents here
          return Center(child: Text('Contents'));
        },
      ),
    );
  }
}
