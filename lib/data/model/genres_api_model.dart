// ignore_for_file: no_leading_underscores_for_local_identifiers

class GenresApiModel {
  int? id;
  String? name;

  GenresApiModel({this.id, this.name});

  GenresApiModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}
