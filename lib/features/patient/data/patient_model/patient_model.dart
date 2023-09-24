import 'links.dart';
import 'meta.dart';

class PatientModel {
  List<dynamic>? data;
  Links? links;
  Meta? meta;

  PatientModel({this.data, this.links, this.meta});

  factory PatientModel.fromJson(Map<String, dynamic> json) => PatientModel(
        data: json['data'] as List<dynamic>?,
        links: json['links'] == null
            ? null
            : Links.fromJson(json['links'] as Map<String, dynamic>),
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data,
        'links': links?.toJson(),
        'meta': meta?.toJson(),
      };
}
