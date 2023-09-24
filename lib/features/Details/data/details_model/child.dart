class Child {
  int? id;
  String? nationalId;
  String? name;
  String? genderKey;
  String? gender;
  String? birthdate;
  String? educationLevel;
  String? retainerName;
  String? retainerPhone;
  String? createdAt;

  Child({
    this.id,
    this.nationalId,
    this.name,
    this.genderKey,
    this.gender,
    this.birthdate,
    this.educationLevel,
    this.retainerName,
    this.retainerPhone,
    this.createdAt,
  });

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        id: json['id'] as int?,
        nationalId: json['national_id'] as String?,
        name: json['name'] as String?,
        genderKey: json['gender_key'] as String?,
        gender: json['gender'] as String?,
        birthdate: json['birthdate'] as String?,
        educationLevel: json['education_level'] as String?,
        retainerName: json['retainer_name'] as String?,
        retainerPhone: json['retainer_phone'] as String?,
        createdAt: json['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'national_id': nationalId,
        'name': name,
        'gender_key': genderKey,
        'gender': gender,
        'birthdate': birthdate,
        'education_level': educationLevel,
        'retainer_name': retainerName,
        'retainer_phone': retainerPhone,
        'created_at': createdAt,
      };
}
