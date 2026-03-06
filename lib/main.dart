import 'package:flutter/material.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';
import 'package:movie_info_app/ui/home_page/view_models/home_view_model.dart';
import 'package:movie_info_app/ui/home_page/widgets/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Register providers for dependency injection
    MultiProvider(
    providers: [
      Provider(create: (_) => MovieRepository()),
      ChangeNotifierProvider(create: (context) => HomeViewModel(movieRepository: context.read<MovieRepository>()),
      ),
    ],
    child: const MyApp()
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Movie Info',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: HomeScreen(pageTitle: 'Home', viewModel: context.read<HomeViewModel>()),
      );
  }
}
