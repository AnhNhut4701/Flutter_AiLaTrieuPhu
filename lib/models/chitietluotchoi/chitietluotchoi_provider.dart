// ignore_for_file: file_names

import 'dart:convert';
import 'chitietluotchoi_object.dart';

class ChiTietLuotChoiProvider {
  static List<ChiTietLuotChoiObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<ChiTietLuotChoiObject> ls = parsed
        .map<ChiTietLuotChoiObject>((e) => ChiTietLuotChoiObject.fromJson(e))
        .toList();
    return ls;
  }
}
