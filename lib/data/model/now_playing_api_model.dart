// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:movie_info_app/data/model/dates_api_model.dart';
import 'package:movie_info_app/data/model/movie_summary_api_model.dart';

class NowPlayingApiModel {
  DatesApiModel? dates;
  int? page;
  List<MovieSummaryApiModel>? results;
  int? totalPages;
  int? totalResults;

  NowPlayingApiModel({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  NowPlayingApiModel.fromJson(Map<String, dynamic> json) {
    dates = json["dates"] == null
        ? null
        : DatesApiModel.fromJson(json["dates"]);
    page = json["page"];
    results = json["results"] == null
        ? null
        : (json["results"] as List)
              .map((e) => MovieSummaryApiModel.fromJson(e))
              .toList();
    totalPages = json["total_pages"];
    totalResults = json["total_results"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (dates != null) {
      _data["dates"] = dates?.toJson();
    }
    _data["page"] = page;
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    _data["total_pages"] = totalPages;
    _data["total_results"] = totalResults;
    return _data;
  }
}
