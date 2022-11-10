// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';
import 'user_object.dart';

class UserProvider {
  static List<UserObject> parseComments(String Source) {
    final parsed = jsonDecode(Source).cast<Map<String, dynamic>>();
    List<UserObject> ls =
        parsed.map<UserObject>((e) => UserObject.fromMap(e)).toList();
    return ls;
  }
}
