// ignore_for_file: no_leading_underscores_for_local_identifiers

class SpokenLanguagesApiModel {
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguagesApiModel({this.englishName, this.iso6391, this.name});

  SpokenLanguagesApiModel.fromJson(Map<String, dynamic> json) {
    englishName = json["english_name"];
    iso6391 = json["iso_639_1"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["english_name"] = englishName;
    _data["iso_639_1"] = iso6391;
    _data["name"] = name;
    return _data;
  }
}
