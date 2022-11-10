// ignore_for_file: non_constant_identifier_names, file_names

class ChiTietLuotChoiObject {
  int? Id;
  int? LuotChoiId;
  String? CauHoiId;
  String? PhuongAn;
  int? Diem;

  ChiTietLuotChoiObject(
      {this.Id, this.LuotChoiId, this.CauHoiId, this.PhuongAn, this.Diem});

  factory ChiTietLuotChoiObject.fromJson(Map<String, dynamic> json) {
    return ChiTietLuotChoiObject(
        Id: json['Id'],
        LuotChoiId: json['LuotChoId'],
        CauHoiId: json['CauHoiId'],
        PhuongAn: json['PhuongAn'],
        Diem: json['Diem']);
  }
}
