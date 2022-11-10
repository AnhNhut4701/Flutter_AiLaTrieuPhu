// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_unnecessary_containers, prefer_const_constructors, unused_element, sort_child_properties_last, unnecessary_import, unused_field, prefer_final_fields

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user/user_object.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return EditProfileScreenState();
  }
}

class EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController txtmail = TextEditingController();
  TextEditingController txtSdt = TextEditingController();
  TextEditingController txtTen = TextEditingController();
  UserObject? user;

  /* /*  void getUser() async {
    http.Response response = await Auth.getUserInfo();
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(response.body);
      UserObject user = UserObject.fromJson(responseData);

      setState(() {
        this.user = user;
      }); */

      txtmail.text = user.Email ?? '';
      txtSdt.text = user.Sodienthoai ?? '';
      txtTen.text = user.Hoten ?? '';
    } else {
      throw Exception('Failed to load post');
    }
  } */

/*   @override
  void initState() {
    super.initState();
    getUser();
  }
 */
  String _email = '';
  String _hoten = '';
  String _sdt = '';
  // sửa thông tin gnười dùng method put
  /* update() async {
    if (txtmail.text.isNotEmpty &&
        txtTen.toString().isNotEmpty &&
        txtSdt.toString().isNotEmpty) {
      http.Response response =
          await Auth.udpate(txtTen.text, txtmail.text, txtSdt.text);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => PerInfor()),
            (route) => false);
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      Fluttertoast.showToast(
        msg: "Vui lòng nhập đầy đủ thông tin",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'CHỈNH SỬA THÔNG TIN CÁ NHÂN',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Tên người dùng',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: UnderlineInputBorder(),
                        hintText: 'Nhập tên mới',
                      ),
                      //controller: txtTen,
                      //onChanged: (value) => txtTen.text = value,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Số điện thoại',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        border: UnderlineInputBorder(),
                        hintText: 'Nhập số điện thoại mới',
                      ),
                      controller: txtSdt,
                      onChanged: (value) => txtSdt.text = value,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: UnderlineInputBorder(),
                          hintText: 'Nhập email mới',
                        ),
                        controller: txtmail,
                        onChanged: (value) {
                          setState(() {
                            txtmail.text = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 300,
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        //update();
                      },
                      child: Text(
                        'Lưu thay đổi',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffA6ED4B)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
