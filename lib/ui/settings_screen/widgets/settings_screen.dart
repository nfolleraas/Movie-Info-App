import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/settings_screen/view_models/settings_view_model.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required pageTitle,
    required SettingsViewModel viewModel,
  }) : _pageTitle = pageTitle,
       _viewModel = viewModel;

  final String _pageTitle;
  final SettingsViewModel _viewModel;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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