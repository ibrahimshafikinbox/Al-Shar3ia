import 'data.dart';

class DetailsModel {
  DetailsData? data;

  DetailsModel({this.data});

  factory DetailsModel.fromJson(Map<String, dynamic> json) => DetailsModel(
        data: json['data'] == null
            ? null
            : DetailsData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };
}
