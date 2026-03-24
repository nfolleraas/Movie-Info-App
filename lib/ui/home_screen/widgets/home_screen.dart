import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/home_screen/view_models/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required HomeViewModel viewModel})
    : _viewModel = viewModel;

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
