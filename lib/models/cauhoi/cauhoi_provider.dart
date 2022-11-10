// ignore_for_file: file_names

import 'dart:convert';
import 'cauhoi_object.dart';

class CauHoiProvider {
  static List<CauHoiObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<CauHoiObject> ls =
        parsed.map<CauHoiObject>((e) => CauHoiObject.fromJson(e)).toList();
    return ls;
  }
}
