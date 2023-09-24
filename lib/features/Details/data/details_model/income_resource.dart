class IncomeResource {
  int? id;
  String? title;
  DateTime? createdAt;
  int? amount;

  IncomeResource({this.id, this.title, this.createdAt, this.amount});

  factory IncomeResource.fromJson(Map<String, dynamic> json) {
    return IncomeResource(
      id: json['id'] as int?,
      title: json['title'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      amount: json['amount'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'created_at': createdAt?.toIso8601String(),
        'amount': amount,
      };
}
