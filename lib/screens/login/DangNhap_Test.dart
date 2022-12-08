// ignore_for_file: file_names

/* // ignore_for_file: depend_on_referenced_packages, file_names, prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore, void_checks

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String taikhoan = "";
  String matkhau = "";

  //lấy thông tin tài khoản và mật khẩu

  login() async {
    if (taikhoan.isNotEmpty && matkhau.isNotEmpty) {
      http.Response response = await Auth.login(taikhoan, matkhau);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // lấy token
        String token = responseMap["token"];
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('token', token);
        // lấy id
        int id = responseMap["data"]['id'];
        await pref.setInt('userid', id);
        /* Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => ScreenMain()),
            (route) => false); */
      } else {
        Fluttertoast.showToast(
            msg: responseMap["message"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      Fluttertoast.showToast(
        msg: "Vui lòng nhập đầy đủ thông tin",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  Widget LoginLoad_black = Container(
    width: 500,
    height: 225,
    decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffA6ED4B),
            radius: 60,
            child: Text(
              'BK',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'BVDK',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffA6ED4B)),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_AcountName = Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Tài Khoản',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 50, right: 50),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: 'Tài Khoản',
            ),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_AcountPass = Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Mật Khẩu',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 50, right: 50),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: 'Password',
            ),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_Green = Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'KDoubleC',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          LoginLoad_black,
          LoginLoad_Green,
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Tài Khoản',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                  child: TextField(
                    //controller: user,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.account_balance),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: 'Tài Khoản',
                    ),
                    onChanged: (value) {
                      taikhoan = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Mật Khẩu',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                  child: TextField(
                    obscureText: true,
                    // controller: pass,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: 'Password',
                    ),
                    onChanged: (value) {
                      matkhau = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      return login();
                    },
                    // ignore: sort_child_properties_last
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {
                /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                })); */
              },
              child: Text(
                'Đăng ký',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */