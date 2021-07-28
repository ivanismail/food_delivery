import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/product/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();

  final ProductController controller = Get.find<ProductController>();
}

class _ProductViewState extends State<ProductView> {
  @override
  void initState() {
    super.initState();
    // controller.loadProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
