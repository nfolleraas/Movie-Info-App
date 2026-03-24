// ignore_for_file: no_leading_underscores_for_local_identifiers

class ProductionCompaniesApiModel {
  int? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompaniesApiModel({this.id, this.logoPath, this.name, this.originCountry});

  ProductionCompaniesApiModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    logoPath = json["logo_path"];
    name = json["name"];
    originCountry = json["origin_country"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["logo_path"] = logoPath;
    _data["name"] = name;
    _data["origin_country"] = originCountry;
    return _data;
  }
}
