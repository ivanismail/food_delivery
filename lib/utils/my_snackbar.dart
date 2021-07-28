import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackbar {
  static void success(
          {String title = 'Berhasil !',
          String message = 'Ini adalah message'}) =>
      Get.snackbar(
        title,
        message,
        margin: EdgeInsets.zero,
        borderRadius: 0,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        animationDuration: Duration(milliseconds: 300),
      );

  static void danger(
          {String title = 'Gagal !', String message = 'Ini adalah message'}) =>
      Get.snackbar(
        title,
        message,
        margin: EdgeInsets.zero,
        borderRadius: 0,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        animationDuration: Duration(milliseconds: 300),
      );
}
