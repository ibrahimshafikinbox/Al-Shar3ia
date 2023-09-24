class TermsAndConditionModel {
  String? data;

  TermsAndConditionModel({this.data});

  factory TermsAndConditionModel.fromJson(Map<String, dynamic> json) {
    return TermsAndConditionModel(
      data: json['data'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
      };
}
