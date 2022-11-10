// ignore_for_file: file_names

import 'dart:convert';
import 'linhvuc_object.dart';

class LinhVucProvider {
  static List<LinhVucObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<LinhVucObject> ls =
        parsed.map<LinhVucObject>((e) => LinhVucObject.fromJson(e)).toList();
    return ls;
  }
}
