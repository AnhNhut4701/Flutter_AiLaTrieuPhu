// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, file_names, prefer_const_constructors, unused_local_variable, unused_field, depend_on_referenced_packages, unused_label, unnecessary_null_comparison, unused_import

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtConfirmPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget imgSection = Image.asset(
      'images/ailatrieuphu.jpg',
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

    Widget passwordSection = TextFormField(
      controller: txtPass,
      obscureText: _obscureText,
      validator: (val) => val!.length < 6 ? 'Required at least 6 chars' : null,
      decoration: InputDecoration(
        hintText: 'Mật khẩu',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.lock,
            color: Colors.lightBlueAccent,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
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

    Widget confirmpasswordSection = TextFormField(
      controller: txtPass,
      obscureText: _obscureText,
      validator: (val) => val!.length < 6 ? 'Required at least 6 chars' : null,
      decoration: InputDecoration(
        hintText: 'Mật khẩu',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.lock,
            color: Colors.lightBlueAccent,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
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

    Widget dangkySection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        child: MaterialButton(
          onPressed: () async {
            try {
              final newUser = _auth.createUserWithEmailAndPassword(
                email: txtUsername.text,
                password: txtPass.text,
              );
              if (newUser != null) {
                Navigator.pop(context, 'Đăng ký thành công');
              } else {
                final snackBar = SnackBar(content: Text('Không thành công'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            } catch (e) {
              final snackBar = SnackBar(content: Text('Có lỗi xảy ra'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          shape: RoundedRectangleBorder(
              //borderRadius: BorderRadius.circular(30),
              ),
          color: Colors.lightBlueAccent,
          height: 60,
          child: const Text(
            'Đăng ký',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ctnSection,
            imgSection,
            sizeboxSection1,
            usernameSection,
            sizeboxSection1,
            emailSection,
            sizeboxSection1,
            passwordSection,
            sizeboxSection1,
            confirmpasswordSection,
            sizeboxSection1,
            dangkySection,
          ],
        ),
      ),
    );
  }
}
