// ignore_for_file: avoid_print, depend_on_referenced_packages, file_names, unused_local_variable, prefer_interpolation_to_compose_strings

import "dart:convert";

import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../url.dart';

class Auth {
  static Future<http.Response> register(String taikhoan, String matkhau,
      String email, String sdt, String hoten) async {
    Map data = {
      "taikhoan": taikhoan,
      "matkhau": matkhau,
      "email": email,
      "sdt": sdt,
      "hoten": hoten,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'dangki');
    http.Response response = await http.post(url, headers: headers, body: body);
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String taikhoan, String matkhau) async {
    Map data = {
      "taikhoan": taikhoan,
      "matkhau": matkhau,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'login');
    http.Response response = await http.post(url, headers: headers, body: body);
    print(response.body);
    return response;
  }

  //logout
  static Future<http.Response> logout() async {
    var url = Uri.parse(baseURL + 'logout');
    String token = await getToken();
    http.Response response =
        await http.post(url, headers: {'Authorization': 'Bearer $token'});
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('token');
    print(response.body);
    return response;
  }

  // lấy thông tin người dùng
  static Future<http.Response> getUserInfo() async {
    var url = Uri.parse(baseURL + 'user');
    // lấy token

    String token = await getToken();
    http.Response response =
        await http.get(url, headers: {'Authorization': 'Bearer $token'});
    print(response.body);
    return response;
  }

  // get user id
  Future<int> getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('userId') ?? 0;
  }

// sửa
  static Future<http.Response> udpate(
      String hoten, String email, String sdt) async {
    Map data = {
      'hoten': hoten,
      'email': email,
      'sdt': sdt,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'nguoidung');

    String token = await getToken();
    http.Response response = await http.put(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: data,
    );

    print(response.body);

    return response;
  }
}

// lấy token
Future<String> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('token') ?? '';
}
