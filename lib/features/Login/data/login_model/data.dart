class Login_Data {
  int? id;
  String? name;
  String? phone;
  String? avatar;
  int? active;
  String? userType;
  String? createdAt;
  int? newNotifications;

  Login_Data({
    this.id,
    this.name,
    this.phone,
    this.avatar,
    this.active,
    this.userType,
    this.createdAt,
    this.newNotifications,
  });

  factory Login_Data.fromJson(Map<String, dynamic> json) => Login_Data(
        id: json['id'] as int?,
        name: json['name'] as String?,
        phone: json['phone'] as String?,
        avatar: json['avatar'] as String?,
        active: json['active'] as int?,
        userType: json['user_type'] as String?,
        createdAt: json['created_at'] as String?,
        newNotifications: json['new_notifications'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'avatar': avatar,
        'active': active,
        'user_type': userType,
        'created_at': createdAt,
        'new_notifications': newNotifications,
      };
}
