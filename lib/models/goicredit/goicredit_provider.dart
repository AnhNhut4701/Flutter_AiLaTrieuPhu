// ignore_for_file: file_names

import 'dart:convert';
import 'goicredit_object.dart';

class GoiCreditProvider {
  static List<GoiCreditObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<GoiCreditObject> ls = parsed
        .map<GoiCreditObject>((e) => GoiCreditObject.fromJson(e))
        .toList();
    return ls;
  }
}
