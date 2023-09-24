class Area {
  int? id;
  String? title;

  Area({this.id, this.title});

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json['id'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
      };
}
