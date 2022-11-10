// ignore_for_file: non_constant_identifier_names, file_names

class GoiCreditObject {
  int? Id;
  String? TenGoi;
  String? Credit;
  int? SoTien;
  bool? TrangThai;

  GoiCreditObject(
      {this.Id, this.TenGoi, this.Credit, this.SoTien, this.TrangThai});

  factory GoiCreditObject.fromJson(Map<String, dynamic> json) {
    return GoiCreditObject(
        Id: json['Id'],
        TenGoi: json['TenGoi'],
        Credit: json['Credit'],
        SoTien: json['SoTien'],
        TrangThai: json['TrangThai']);
  }
}
