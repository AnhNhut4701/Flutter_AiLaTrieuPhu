// ignore_for_file: unused_import, use_key_in_widget_constructors, file_names, prefer_const_constructors, override_on_non_overriding_member, annotate_overrides, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';

import '../register/register_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return AccountScreenState();
  }
}

class AccountScreenState extends State<AccountScreen> {
  @override
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  Widget build(BuildContext context) {
    Widget imgSection = Image.asset(
      'images/signin.jpg',
      fit: BoxFit.cover,
    );
    Widget ctnSection = Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
    );

    Widget usernameSection = TextFormField(
      controller: txtUsername,
      validator: (val) => val!.isEmpty ? 'Tên đăng nhập không hợp lệ' : null,
      decoration: InputDecoration(
        hintText: 'Tên đăng nhập',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
      ),
    );

    Widget sizeboxSection1 = const SizedBox(height: 20);

    Widget emailSection = TextField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        suffixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(
            Icons.email,
            color: Colors.lightBlueAccent,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
      ),
    );

    Widget laylaimatkhauSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
            );
          },
          shape: RoundedRectangleBorder(
              //borderRadius: BorderRadius.circular(20),
              ),
          color: Colors.lightBlueAccent,
          height: 42,
          child: const Text(
            'Lấy lại mật khẩu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );

    Widget dangkySection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bạn chưa có tài khoản? ',
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ));
          },
          child: const Text(
            'Đăng ký ngay ',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ),
      ],
    );

    return Scaffold(
      /* body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40), */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/goku.jpg',
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      // ignore: deprecated_member_use
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {},
                        child: Icon(
                          Icons.camera,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ctnSection,
            imgSection,
            sizeboxSection1,
            usernameSection,
            sizeboxSection1,
            emailSection,
            sizeboxSection1,
            laylaimatkhauSection,
            sizeboxSection1,
            dangkySection,
          ],
        ),
      ),
    );
  }
}
