// ignore_for_file: non_constant_identifier_names, file_names

class CauHoiObject {
  int? Id;
  String? NoiDung;
  int? LinhVucId;
  String? PhuongAnA;
  String? PhuongAnB;
  String? PhuongAnC;
  String? PhuongAnD;
  String? DapAn;
  bool? TrangThai;

  CauHoiObject(
      {this.Id,
      this.NoiDung,
      this.LinhVucId,
      this.PhuongAnA,
      this.PhuongAnB,
      this.PhuongAnC,
      this.PhuongAnD,
      this.DapAn,
      this.TrangThai});

  factory CauHoiObject.fromJson(Map<String, dynamic> json) {
    return CauHoiObject(
        Id: json['Id'],
        NoiDung: json['NoiDung'],
        LinhVucId: json['LinhVucId'],
        PhuongAnA: json['PhuongAnA'],
        PhuongAnB: json['PhuongAnB'],
        PhuongAnC: json['PhuongAnC'],
        PhuongAnD: json['PhuongAnD'],
        DapAn: json['DapAn'],
        TrangThai: json['TrangThai']);
  }
}
