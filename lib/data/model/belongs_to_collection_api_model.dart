class BelongsToCollectionApiModel {
  int? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  BelongsToCollectionApiModel({this.id, this.name, this.posterPath, this.backdropPath});

  BelongsToCollectionApiModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    posterPath = json["poster_path"];
    backdropPath = json["backdrop_path"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["poster_path"] = posterPath;
    _data["backdrop_path"] = backdropPath;
    return _data;
  }
}
