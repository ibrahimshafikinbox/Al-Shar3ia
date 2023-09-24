class MoneyHelpType {
  int? id;
  String? title;
  String? status;
  String? createdAt;
  int? amount;
  String? notes;

  MoneyHelpType({
    this.id,
    this.title,
    this.status,
    this.createdAt,
    this.amount,
    this.notes,
  });

  factory MoneyHelpType.fromJson(Map<String, dynamic> json) => MoneyHelpType(
        id: json['id'] as int?,
        title: json['title'] as String?,
        status: json['status'] as String?,
        createdAt: json['created_at'] as String?,
        amount: json['amount'] as int?,
        notes: json['notes'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'status': status,
        'created_at': createdAt,
        'amount': amount,
        'notes': notes,
      };
}
