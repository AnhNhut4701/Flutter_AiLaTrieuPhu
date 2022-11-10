// ignore_for_file: non_constant_identifier_names, file_names

class LinhVucObject {
  int? Id;
  String? TenLinhVuc;
  bool? TrangThai;

  LinhVucObject({this.Id, this.TenLinhVuc, this.TrangThai});

  factory LinhVucObject.fromJson(Map<String, dynamic> json) {
    return LinhVucObject(
        Id: json['Id'],
        TenLinhVuc: json['TenLinhVuc'],
        TrangThai: json['TrangThai']);
  }
}
