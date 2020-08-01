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
    var response = await http.get(BASE + 'users/profiles/minecraft/${name}?at=${now}');
    return response.body;
  }

  static Future<String> uuidForNames(String names) async {
    var response = await http.get(BASE + '/profiles/minecraft/${names}');
    return response.body;
  }

  static Future<String> nameHistoryForUuid(String uuid) async {
    var response = await http.get(BASE + '/user/profiles/${uuid}/names');
    return response.body;
  }

  static Future<String> nameHistoryForName(String name) async {
    var response = await http.get(BASE + '/user/profiles/${uuidForName(name)}/names');
    return response.body;
  }

  static Future<String> profileForUUid(String uuid) async {
    var response = await http.get('https://sessionserver.mojang.com/session/minecraft/profiles/${uuid}');
    return response.body;
  }

}