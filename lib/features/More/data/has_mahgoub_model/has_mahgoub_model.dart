import 'package:final_shar3ia_mobile/features/More/data/has_mahgoub_model/datum.dart';

import 'links.dart';
import 'meta.dart';

class HasMahgoubModel {
  List<Data>? data;
  Links? links;
  Meta? meta;

  HasMahgoubModel({this.data, this.links, this.meta});

  factory HasMahgoubModel.fromJson(Map<String, dynamic> json) {
    return HasMahgoubModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
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
