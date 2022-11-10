// ignore_for_file: depend_on_referenced_packages, unused_import, prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last, file_names

import 'package:doan_flutter/screens/profile/private_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'change_password_screen.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  /*logout() async {
    http.Response response = await Auth.logout();
    if (response.statusCode == 200) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Login()),
          (Route<dynamic> route) => false);
    } else {
      print("Logout failed");
    }
  }
 */
  Widget TxtSetInfor = Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    color: Colors.black,
    child: Text(
      'Thông tin cá nhân',
      style: TextStyle(
          color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),
    ),
  );
  Widget TxtSetInfor2 = Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    color: Colors.black,
    child: Text(
      'Quản lý khác',
      style: TextStyle(
          color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'QUẢN LÝ THÔNG TIN CÁ NHÂN',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            TxtSetInfor,
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EditProfileScreen();
                  }));
                },
                child: Text(
                  'Chỉnh sửa thông tin cá nhân',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChangePasswordScreen();
                  }));
                },
                child: Text(
                  'Đổi mật khẩu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            TxtSetInfor2,
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PrivateInformationScreen();
                  }));
                },
                child: Text(
                  'Quyền riêng tư',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Thay đổi tài khoản',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Xóa tài khoản',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: TextButton(
                onPressed: () async {
                  //return await logout();
                },
                child: Text(
                  'Đăng xuất',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xffA6ED4B),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
