import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_info_app/data/repositories/movie_repository.dart';
import 'package:movie_info_app/data/services/api_service.dart';
import 'package:movie_info_app/ui/explore_screen/view_models/explore_view_model.dart';
import 'package:movie_info_app/ui/home_screen/view_models/home_view_model.dart';
import 'package:movie_info_app/ui/now_playing_screen/view_models/now_playing_view_model.dart';
import 'package:movie_info_app/ui/navigation_bar/widgets/navigation_bar.dart'
    as nav_bar;
import 'package:movie_info_app/ui/settings_screen/view_models/settings_view_model.dart';
import 'package:movie_info_app/utils/helpers/app_logger_helper.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  AppLoggerHelper.initialize();

  runApp(
    // Register providers for dependency injection (equivalent to builder.Services in C#)
    // The order of the providers matters here.
    MultiProvider(
      providers: [
        // (_) means the context parameter is not needed.
        // The context is not needed because ApiClient doesnt have any dependencies
        Provider(create: (_) => ApiClient()),

        Provider(
          create: (context) =>
              MovieRepository(apiClient: context.read<ApiClient>()),
        ),

        // (context) means the context parameter is needed and passed with the variable name 'context'.
        // This is because HomeViewModel has a dependency, which is MovieRepository.
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(
          create: (context) => NowPlayingViewModel(
            movieRepository: context.read<MovieRepository>(),
          ),
        ),
        ChangeNotifierProvider(create: (context) => ExploreViewModel()),
        ChangeNotifierProvider(create: (context) => SettingsViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Info',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: nav_bar.NavigationBar(),
    );
  }
}
