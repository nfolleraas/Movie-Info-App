import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, child) {
          return Center(
            child: switch (widget.viewModel.isLoading) {
              true => const CircularProgressIndicator(),
              false => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.viewModel.movie!.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(DateFormat.yMMMd().format(widget.viewModel.movie!.releaseDate)),
                ],
              ),
            },
          );
        },
      ),
    );
  }
}
