import 'area.dart';

class Sesonal_Food_Bank_Data {
  int? id;
  String? details;
  String? code;
  String? name;
  String? nationalId;
  String? healthStatus;
  String? partnerName;
  String? partnerLifeStatus;
  String? partnerLifeStatusKey;
  dynamic partnerNationalId;
  String? mobile;
  String? address;
  String? lat;
  String? lng;
  int? hasMahgoub;
  int? mahgoubNumber;
  String? statusKey;
  String? status;
  int? helpAmount;
  int? incomeAmount;
  int? showInReport;
  Area? area;

  Sesonal_Food_Bank_Data({
    this.id,
    this.details,
    this.code,
    this.name,
    this.nationalId,
    this.healthStatus,
    this.partnerName,
    this.partnerLifeStatus,
    this.partnerLifeStatusKey,
    this.partnerNationalId,
    this.mobile,
    this.address,
    this.lat,
    this.lng,
    this.hasMahgoub,
    this.mahgoubNumber,
    this.statusKey,
    this.status,
    this.helpAmount,
    this.incomeAmount,
    this.showInReport,
    this.area,
  });

  factory Sesonal_Food_Bank_Data.fromJson(Map<String, dynamic> json) =>
      Sesonal_Food_Bank_Data(
        id: json['id'] as int?,
        details: json['details'] as String?,
        code: json['code'] as String?,
        name: json['name'] as String?,
        nationalId: json['national_id'] as String?,
        healthStatus: json['health_status'] as String?,
        partnerName: json['partner_name'] as String?,
        partnerLifeStatus: json['partner_life_status'] as String?,
        partnerLifeStatusKey: json['partner_life_status_key'] as String?,
        partnerNationalId: json['partner_national_id'] as dynamic,
        mobile: json['mobile'] as String?,
        address: json['address'] as String?,
        lat: json['lat'] as String?,
        lng: json['lng'] as String?,
        hasMahgoub: json['has_mahgoub'] as int?,
        mahgoubNumber: json['mahgoub_number'] as int?,
        statusKey: json['status_key'] as String?,
        status: json['status'] as String?,
        helpAmount: json['help_amount'] as int?,
        incomeAmount: json['income_amount'] as int?,
        showInReport: json['show_in_report'] as int?,
        area: json['area'] == null
            ? null
            : Area.fromJson(json['area'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'details': details,
        'code': code,
        'name': name,
        'national_id': nationalId,
        'health_status': healthStatus,
        'partner_name': partnerName,
        'partner_life_status': partnerLifeStatus,
        'partner_life_status_key': partnerLifeStatusKey,
        'partner_national_id': partnerNationalId,
        'mobile': mobile,
        'address': address,
        'lat': lat,
        'lng': lng,
        'has_mahgoub': hasMahgoub,
        'mahgoub_number': mahgoubNumber,
        'status_key': statusKey,
        'status': status,
        'help_amount': helpAmount,
        'income_amount': incomeAmount,
        'show_in_report': showInReport,
        'area': area?.toJson(),
      };
}
