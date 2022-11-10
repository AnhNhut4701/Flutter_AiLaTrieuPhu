// ignore_for_file: non_constant_identifier_names, file_names

class UserObject {
  int? Id;
  String? TenDangNhap;
  String? MatKhau;
  String? Email;
  String? Avatar;
  int? DiemCaoNhat;
  int? Credit;
  bool? TrangThai;

  UserObject(
      {this.Id,
      this.TenDangNhap,
      this.MatKhau,
      this.Email,
      this.Avatar,
      this.DiemCaoNhat,
      this.Credit,
      this.TrangThai});

  UserObject.fromMap(Map<String, dynamic> res)
      : Id = res["id"],
        TenDangNhap = res["TenDangNhap"],
        MatKhau = res["MatKhau"],
        Email = res["Email"],
        Avatar = res["Avatar"],
        DiemCaoNhat = res["DiemCaoNhat"],
        Credit = res["Credit"],
        TrangThai = res["TrangThai"];
  Map<String, Object?> toMap() {
    return {
      'Id': Id,
      'TenDangNhap': TenDangNhap,
      'MatKhau': MatKhau,
      'Email': Email,
      'Avatar': Avatar,
      'DiemCaoNhat': DiemCaoNhat,
      'Credit': Credit,
      'TrangThai': TrangThai
    };
  }

  /* factory UserObject.fromJson(Map<String, dynamic> json) {
    return UserObject(
        Id: json['Id'],
        TenDangNhap: json['TenDangNhap'],
        MatKhau: json['MatKhau'],
        Email: json['Email'],
        Avatar: json['Avatar'],
        DiemCaoNhat: json['DiemCaoNhat'],
        Credit: json['Credit'],
        TrangThai: json['TrangThai']); */
}
