import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class SesonalFoodBankModel {
  List<Sesonal_Food_Bank_Data>? data;
  Links? links;
  Meta? meta;

  SesonalFoodBankModel({this.data, this.links, this.meta});

  factory SesonalFoodBankModel.fromJson(Map<String, dynamic> json) {
    return SesonalFoodBankModel(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => Sesonal_Food_Bank_Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'links': links?.toJson(),
        'meta': meta?.toJson(),
      };
}
