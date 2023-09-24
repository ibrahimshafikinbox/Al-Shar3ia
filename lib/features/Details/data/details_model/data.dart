import 'area.dart';
import 'attachment.dart';
import 'category.dart';
import 'child.dart';
import 'income_resource.dart';
import 'money_help_type.dart';

class DetailsData {
  int? id;
  String? code;
  String? name;
  dynamic details;
  String? nationalId;
  String? partnerLifeStatus;
  String? partnerLifeStatusKey;
  String? healthStatus;
  String? partnerName;
  String? partnerNationalId;
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
  Category? category;
  Area? area;
  List<Child>? children;
  List<MoneyHelpType>? moneyHelpTypes;
  List<dynamic>? materialHelpTypes;
  List<IncomeResource>? incomeResources;
  List<Attachment>? attachments;

  DetailsData({
    this.id,
    this.code,
    this.name,
    this.details,
    this.nationalId,
    this.partnerLifeStatus,
    this.partnerLifeStatusKey,
    this.healthStatus,
    this.partnerName,
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
    this.category,
    this.area,
    this.children,
    this.moneyHelpTypes,
    this.materialHelpTypes,
    this.incomeResources,
    this.attachments,
  });

  factory DetailsData.fromJson(Map<String, dynamic> json) => DetailsData(
        id: json['id'] as int?,
        code: json['code'] as String?,
        name: json['name'] as String?,
        details: json['details'] as dynamic,
        nationalId: json['national_id'] as String?,
        partnerLifeStatus: json['partner_life_status'] as String?,
        partnerLifeStatusKey: json['partner_life_status_key'] as String?,
        healthStatus: json['health_status'] as String?,
        partnerName: json['partner_name'] as String?,
        partnerNationalId: json['partner_national_id'] as String?,
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
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category'] as Map<String, dynamic>),
        area: json['area'] == null
            ? null
            : Area.fromJson(json['area'] as Map<String, dynamic>),
        children: (json['children'] as List<dynamic>?)
            ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
            .toList(),
        moneyHelpTypes: (json['money_help_types'] as List<dynamic>?)
            ?.map((e) => MoneyHelpType.fromJson(e as Map<String, dynamic>))
            .toList(),
        materialHelpTypes: json['material_help_types'] as List<dynamic>?,
        incomeResources: (json['income_resources'] as List<dynamic>?)
            ?.map((e) => IncomeResource.fromJson(e as Map<String, dynamic>))
            .toList(),
        attachments: (json['attachments'] as List<dynamic>?)
            ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'name': name,
        'details': details,
        'national_id': nationalId,
        'partner_life_status': partnerLifeStatus,
        'partner_life_status_key': partnerLifeStatusKey,
        'health_status': healthStatus,
        'partner_name': partnerName,
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
        'category': category?.toJson(),
        'area': area?.toJson(),
        'children': children?.map((e) => e.toJson()).toList(),
        'money_help_types': moneyHelpTypes?.map((e) => e.toJson()).toList(),
        'material_help_types': materialHelpTypes,
        'income_resources': incomeResources?.map((e) => e.toJson()).toList(),
        'attachments': attachments?.map((e) => e.toJson()).toList(),
      };
}
