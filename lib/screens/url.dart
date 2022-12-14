// ignore_for_file: unnecessary_import, unused_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const String baseURL = "http://192.168.1.74:8080/api/";
const Map<String, String> headers = {
  "Content-Type": "application/json",
  "Accept": "application/json",
};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(text),
      duration: const Duration(seconds: 2),
    ),
  );
}
