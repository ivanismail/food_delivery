import 'dart:convert';

import 'package:food_delivery/app/models/statusresponse_model.dart';
import 'package:food_delivery/app/models/wrapper/errorresponse_model.dart';
import 'package:food_delivery/app/models/wrapper/failresponse_model.dart';
import 'package:http/http.dart' as http;

import 'package:food_delivery/export.dart';

class APIResponse {
  static String error() => 'error';
  static String fail() => 'fail';
  static String success() => 'success';

  static String getStatus(String data) {
    StatusResponseModel errorResponseModel =
        StatusResponseModel.fromJson(jsonDecode(data));
    return errorResponseModel.status;
  }

  static String getError(String data) {
    ErrorResponseModel errorResponseModel =
        ErrorResponseModel.fromJson(jsonDecode(data));
    return errorResponseModel.errors.values.toList()[0][0];
  }

  static String getMessage(String data) {
    FailResponseModel failResponseModel =
        FailResponseModel.fromJson(jsonDecode(data));
    return failResponseModel.message;
  }

  static bool isFail(http.Response res) =>
      APIResponse.getStatus(res.body) == APIResponse.fail();

  static bool validate(http.Response res) {
    print(res.body);
    if (APIResponse.getStatus(res.body) == APIResponse.error()) {
      print('error');
      MySnackbar.danger(
          message: APIResponse.getError(res.body).capitalizeFirst);
      return false;
    }

    if (APIResponse.getStatus(res.body) == APIResponse.fail()) {
      print('fail');
      if (APIResponse.getMessage(res.body).toLowerCase() == 'unauthenticate') {
        Get.offAndToNamed(Routes.HOME);
        return false;
      }

      MySnackbar.danger(
          message: APIResponse.getMessage(res.body).capitalizeFirst);
      return false;
    }

    return true;
  }
}
