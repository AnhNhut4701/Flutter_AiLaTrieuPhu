// ignore_for_file: non_constant_identifier_names, file_names

class LuotChoiObject {
  int? Id;
  int? NguoiChoiId;
  int? SoCauHoi;
  int? Diem;
  DateTime? NgayGio;

  LuotChoiObject(
      {this.Id, this.NguoiChoiId, this.SoCauHoi, this.Diem, this.NgayGio});

  factory LuotChoiObject.fromJson(Map<String, dynamic> json) {
    return LuotChoiObject(
        Id: json['Id'],
        NguoiChoiId: json['NguoiChoiId'],
        SoCauHoi: json['SoCauHoi'],
        Diem: json['Diem'],
        NgayGio: json['NgayGio']);
  }
}
