
import 'package:mojang_api/MojangAPI.dart';
import 'package:mojang_api/MojangStatusAPI.dart';

void main() async {

  //main mojang api for players
  print(await MojangAPI.uuidForName("RapidTheNerd"));
  print(await MojangAPI.uuidForNameAt("RapidTheNerd", DateTime.now().millisecondsSinceEpoch.toString()));
  print(await MojangAPI.uuidForNames("RapidTheNerd"));
  print(await MojangAPI.nameHistoryForName("RapidTheNerd"));
  print(await MojangAPI.nameHistoryForUuid("43db704e-10b1-40b3-a38d-ce059de35a59"));
  print(await MojangAPI.nameHistoryForName("RapidTheNerd"));
  print(await MojangAPI.profileForUUid("43db704e-10b1-40b3-a38d-ce059de35a59"));

  //status api
  print(await MojangStatusAPI.getApiStatus());
  print(await MojangStatusAPI.getAuthStatus());
  print(await MojangStatusAPI.getSessionStatus());
  print(await MojangStatusAPI.getSkinsStatus());
  print(await MojangStatusAPI.getWebsiteStatus());
}