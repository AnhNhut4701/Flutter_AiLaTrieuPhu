// ignore_for_file: unused_import, file_names, prefer_const_constructors, override_on_non_overriding_member, annotate_overrides, unused_local_variable

import 'package:doan_flutter/register_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordScreenState();
  }
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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

    Widget sizeboxSection1 = const SizedBox(height: 10);
    Widget usernameSection = TextFormField(
      controller: txtUsername,
      validator: (val) => val!.isEmpty ? 'Tên đăng nhập không hợp lệ' : null,
      decoration: InputDecoration(
        hintText: 'Tên đăng nhập',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.account_box,
            color: Colors.lightBlueAccent,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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

    Widget emailSection = TextField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.email,
            color: Colors.lightBlueAccent,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
              //borderRadius: BorderRadius.circular(30),
              ),
          color: Colors.lightBlueAccent,
          height: 60,
          child: const Text(
            'Lấy lại mật khẩu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ctnSection,
            //imgSection,
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
