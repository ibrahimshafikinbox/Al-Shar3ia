class Attachment {
  int? id;
  DateTime? createdAt;
  String? name;
  String? file;
  String? notes;

  Attachment({this.id, this.createdAt, this.name, this.file, this.notes});

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        id: json['id'] as int?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        name: json['name'] as String?,
        file: json['file'] as String?,
        notes: json['notes'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt?.toIso8601String(),
        'name': name,
        'file': file,
        'notes': notes,
      };
}
