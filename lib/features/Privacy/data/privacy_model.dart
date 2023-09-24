class PrivacyModel {
  String? data;

  PrivacyModel({this.data});

  factory PrivacyModel.fromJson(Map<String, dynamic> json) {
    return PrivacyModel(
      data: json['data'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
      };
}
