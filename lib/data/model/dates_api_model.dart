class DatesApiModel {
    String? maximum;
    String? minimum;

    DatesApiModel({this.maximum, this.minimum});

    DatesApiModel.fromJson(Map<String, dynamic> json) {
        maximum = json["maximum"];
        minimum = json["minimum"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["maximum"] = maximum;
        _data["minimum"] = minimum;
      return _data;
    }
}