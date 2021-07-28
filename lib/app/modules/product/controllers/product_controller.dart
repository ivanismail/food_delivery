import 'dart:convert';

import 'package:food_delivery/app/models/product_model.dart';
import 'package:food_delivery/app/repo/product_repo.dart';
import 'package:food_delivery/utils/ajax.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  //TODO: Implement ProductController
  RxList<ProductModel> dataProduct = RxList<ProductModel>([]);
  // Rx<ProductModel> detailBlogRes = Rx<ProductModel>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future loadProduct() async {
    http.Response res = await Ajax.get(ProductRepo.ALL_PRODUCT);
    try {
      // dataCategory.clear();
      ProductModel productModel = ProductModel.fromJson(jsonDecode(res.body));

      print(productModel);
      // productModel.data.forEach((element) {
      //   dataCategory.add(element);
      // });
    } catch (e) {
      // throw gotoErrorPage(e);
    }
  }
}
