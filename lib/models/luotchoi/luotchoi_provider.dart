// ignore_for_file: file_names

import 'dart:convert';
import 'luotchoi_object.dart';

class LuotChoiProvider {
  static List<LuotChoiObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<LuotChoiObject> ls =
        parsed.map<LuotChoiObject>((e) => LuotChoiObject.fromJson(e)).toList();
    return ls;
  }
}
