import 'package:final_shar3ia_mobile/features/More/data/family_student_model/datum.dart';

import 'links.dart';
import 'meta.dart';

class FamilyStudentModel {
  List<FamilyStudentData>? data;
  Links? links;
  Meta? meta;

  FamilyStudentModel({this.data, this.links, this.meta});

  factory FamilyStudentModel.fromJson(Map<String, dynamic> json) {
    return FamilyStudentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FamilyStudentData.fromJson(e as Map<String, dynamic>))
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
