import 'package:http/http.dart' as http;


class MojangAPI {
  static const String BASE = "https://api.mojang.com/";

  Future<String> uuidForNameAt(String name, String time) async {
    var response = await http.get(BASE + 'users/profiles/minecraft/${name}?at=${time}');
    return response.body;
  }

}