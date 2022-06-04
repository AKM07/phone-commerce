import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_skeleton/controllers/ProductController.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';

import '../constants/Constants.dart';
import '../model/response/ProductItemResponse.dart';
import 'package:intl/intl.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  final productController = Get.find<ProductController>();

  final currencyFormatter = new NumberFormat(Constants.currencyFormat);
  final decimalFormatter = new NumberFormat(Constants.decimalFormat);

  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    var defaultSize = SizeUtil.defaultSize;
    return Scaffold(
      appBar: AppBar(title: Text("Products "), centerTitle: true),
      body: SafeArea(
          child: Container(
        width: SizeUtil.screenWidth,
        margin: EdgeInsets.all(20),
        child: Obx(() => NotificationListener(
            child: RefreshIndicator(
                onRefresh: productController.doGetMoreProducts(),
                child: productsGrid(
                    defaultSize!, productController.productsData)))),
      )),
    );
  }

  Widget productsGrid(double defaultSize, List<ProductItemResponse> data) {
    final double itemHeight = defaultSize * 47;
    final double itemWidth = SizeUtil.screenWidth! / 2;
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          var product = data[index];
          double finalPrice = 0;
          return InkWell(
            onTap: () async {
              // var status = await Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => ProductDetailPage(
              //             product: product,
              //           )),
              // );

              if (product.discountPercentage != 0.0) {
                finalPrice = product.price * product.discountPercentage / 100;
              } else {
                finalPrice = product.price;
              }
              if (finalPrice < 0) {
                finalPrice = 0;
              }
            },
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      product.thumbnail.length != 0
                          ? Container(
                              height: defaultSize * 10,
                              child: Image.network(product.thumbnail))
                          : Container(
                              height: defaultSize * 13,
                              child: Center(child: Text("No Image")),
                            ),
                      Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            "assets/images/ic_like.svg",
                            width: defaultSize * 2,
                            height: defaultSize * 2,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                              color: Color(0xFF596375),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          decimalFormatter.format(product.rating),
                          style: TextStyle(
                            color: Color(0xFF596375),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  product.discountPercentage != 0
                      ? Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 1),
                              decoration: BoxDecoration(
                                  color: Color(Constants.appMainColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                decimalFormatter
                                        .format(product.discountPercentage) +
                                    "%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              currencyFormatter.format(product.price),
                              style: TextStyle(
                                color: Color(0xFFC2C7CB),
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    currencyFormatter.format(finalPrice),
                    style: TextStyle(
                      color: Color(0xFF596375),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
