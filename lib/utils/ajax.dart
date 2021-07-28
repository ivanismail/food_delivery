import 'package:food_delivery/const.dart';
import 'package:food_delivery/storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class Ajax {
  static Future<http.Response> post(
      String url, Map<String, dynamic> data) async {
    http.Response res;
    try {
      String token;
      if (GetStorage().hasData(FoodStorage.ID)) {
        token = GetStorage().read(FoodStorage.ID);
      }
      res = await http.post(APIURL + url, body: data, headers: {
        'Authorization': 'Bearer $token',
      });
    } catch (e) {
      // gotoErrorPage('AJAX : ' + e.toString());
    }
    return res;
  }

  static Future<http.Response> put(
      String url, Map<String, dynamic> data) async {
    http.Response res;
    try {
      String token;
      if (GetStorage().hasData(FoodStorage.ID)) {
        token = GetStorage().read(FoodStorage.ID);
      }

      res = await http.put(APIURL + url, body: data, headers: {
        'Authorization': 'Bearer $token',
      });
    } catch (e) {
      // gotoErrorPage('AJAX : ' + e.toString());
    }
    return res;
  }

  static Future<http.Response> get(String url) async {
    http.Response res;
    try {
      String token;
      if (GetStorage().hasData(FoodStorage.ID)) {
        token = GetStorage().read(FoodStorage.ID);
      }

      res = await http.get(APIURL + url, headers: {
        'Authorization': 'Bearer $token',
      });
    } catch (e) {
      // gotoErrorPage('AJAX : ' + e.toString());
    }
    return res;
  }
}
