// ignore_for_file: file_names

import 'dart:convert';
import 'lichsumuacredit_object.dart';

class LichSuMuaCreditProvider {
  static List<LichSuMuaCreditObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<LichSuMuaCreditObject> ls = parsed
        .map<LichSuMuaCreditObject>((e) => LichSuMuaCreditObject.fromJson(e))
        .toList();
    return ls;
  }
}
