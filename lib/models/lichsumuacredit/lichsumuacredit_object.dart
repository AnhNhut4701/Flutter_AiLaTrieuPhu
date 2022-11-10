// ignore_for_file: non_constant_identifier_names, file_names

class LichSuMuaCreditObject {
  int? Id;
  int? NguoiChoiId;
  int? GoiCreditId;
  String? Credit;
  int? SoTien;

  LichSuMuaCreditObject(
      {this.Id, this.NguoiChoiId, this.GoiCreditId, this.Credit, this.SoTien});

  factory LichSuMuaCreditObject.fromJson(Map<String, dynamic> json) {
    return LichSuMuaCreditObject(
        Id: json['Id'],
        NguoiChoiId: json['NguoiChoiId'],
        GoiCreditId: json['GoiCreditId'],
        Credit: json['Credit'],
        SoTien: json['SoTien']);
  }
}
