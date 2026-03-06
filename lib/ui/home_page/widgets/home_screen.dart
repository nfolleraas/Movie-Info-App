import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/home_page/view_models/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.pageTitle,
    required this.viewModel,
  });

  final String pageTitle;
  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.viewModel.movieTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(widget.viewModel.movieReleaseYear.toString()),
          ],
        ),
      ),
    );
  }
}
