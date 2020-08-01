import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:mojang_api/impl/Status.dart';

class MojangStatusAPI {


  static var website = Status.Unobtained;
  static var session = Status.Unobtained;
  static var auth    = Status.Unobtained;
  static var skins   = Status.Unobtained;
  static var api     = Status.Unobtained;

  static Future<Status> getWebsiteStatus() async {

    var response = await http.get("https://status.mojang.com/check");

    switch(response.body[0]) {
      case 'yellow':
        website = Status.Issues;
        break;
      case 'red':
        website = Status.Issues;
        break;
      case 'green':
      default:
      website = Status.Unobtained;
        website = Status.Fine;
        break;
    }
    return website;
  }

  static Future<Status> getSessionStatus() async {

    var response = await http.get("https://status.mojang.com/check");

    switch(response.body[1]) {
      case 'yellow':
        session = Status.Issues;
        break;
      case 'red':
        session = Status.Issues;
        break;
      case 'green':
        session = Status.Fine;
        break;
      default:
        session = Status.Unobtained;
        break;
    }
    return session;
  }

  static Future<Status> getAuthStatus() async {

    var response = await http.get("https://status.mojang.com/check");

    switch(response.body[3]) {
      case 'yellow':
        auth = Status.Issues;
        break;
      case 'red':
        auth = Status.Issues;
        break;
      case 'green':
        auth = Status.Fine;
        break;
      default:
        auth = Status.Unobtained;
        break;
    }
    return auth;
  }

  static Future<Status> getSkinsStatus() async {

    var response = await http.get("https://status.mojang.com/check");

    switch(response.body[4]) {
      case 'yellow':
        skins = Status.Issues;
        break;
      case 'red':
        skins = Status.Issues;
        break;
      case 'green':
        skins = Status.Fine;
        break;
      default:
        skins = Status.Unobtained;
        break;
    }
    return skins;
  }

  static Future<Status> getApiStatus() async {

    var response = await http.get("https://status.mojang.com/check");

    switch(response.body[7]) {
      case 'yellow':
        api = Status.Issues;
        break;
      case 'red':
        api = Status.Issues;
        break;
      case 'green':
        api = Status.Fine;
        break;
      default:
        api = Status.Unobtained;
        break;
    }
    return api;
  }
}