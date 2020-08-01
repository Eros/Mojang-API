import 'dart:async';
import 'package:http/http.dart' as http;


class MojangAPI {
  static const String BASE = "https://api.mojang.com/";
  static var now = DateTime.now().millisecondsSinceEpoch;

  static Future<String> uuidForNameAt(String name, String time) async {
    var response = await http.get(BASE + 'users/profiles/minecraft/${name}?at=${time}');
    return response.body;
  }

  static Future<String> uuidForName(String name) async {
    var response = await http.get(BASE + "users/profiles/minecraft/${name}?at=${now}");
    return response.body;
  }

}