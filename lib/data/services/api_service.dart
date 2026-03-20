import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_info_app/data/model/movie_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:movie_info_app/data/model/now_playing_api_model.dart';
import 'package:movie_info_app/utils/helpers/app_logger_helper.dart';
import 'package:movie_info_app/utils/result.dart';

class ApiClient {
  Future<Result<MovieApiModel>> getMovieById(int id) async {
    final client = http.Client();

    final url = Uri(
      scheme: 'https',
      host: 'api.themoviedb.org',
      path: '/3/movie/$id',
    );

    try {
      final response = await client.get(
        url,
        headers: {'Authorization': 'Bearer ${dotenv.env['TMDB_KEY']}'},
      );

      if (response.statusCode == 200) {
        return Result.ok(MovieApiModel.fromJson(jsonDecode(response.body)));
      } else {
        AppLoggerHelper.error('Failed to load data: ${response.statusCode}');
        return Result.error(
          HttpException('Invalid response: ${response.statusCode}'),
        );
      }
    } on Exception catch (e) {
      AppLoggerHelper.error('Error: $e');
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<NowPlayingApiModel>> getMoviesNowPlaying() async {
    final client = http.Client();

    final url = Uri(
      scheme: 'http',
      host: 'api.themoviedb.org',
      path: '/3/movie/now_playing',
    );

    try {
      final response = await client.get(
        url,
        headers: {'Authorization': 'Bearer ${dotenv.env['TMDB_KEY']}'},
      );

      if (response.statusCode == 200) {
        return Result.ok(
          NowPlayingApiModel.fromJson(jsonDecode(response.body)),
        );
      } else {
        AppLoggerHelper.error('Failed to load data: ${response.statusCode}');
        return Result.error(
          HttpException('Invalid response: ${response.statusCode}'),
        );
      }
    } on Exception catch (e) {
      AppLoggerHelper.error('Error: $e');
      return Result.error(e);
    } finally {
      client.close();
    }
  }
}
