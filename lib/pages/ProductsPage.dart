// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_skeleton/controllers/ProductController.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';

import '../constants/Constants.dart';
import '../model/response/ProductItemResponse.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ProductsPage extends StatelessWidget {
  final productController = Get.find<ProductController>();

  final currencyFormatter = new NumberFormat(Constants.currencyFormat);
  final decimalFormatter = new NumberFormat(Constants.decimalFormat);
  bool _isGettingMoreData = false;

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
        child: NotificationListener(
            onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo.metrics.maxScrollExtent == scrollInfo.metrics.pixels) {
            if (!_isGettingMoreData) {
              _isGettingMoreData = true;
              loadMoreData();
            }
          }
          return true;
        }, child: Obx(() {
          _isGettingMoreData = false;
          return productsGrid(
              defaultSize!, productController.productsData.value);
        })),
      )),
    );
  }

  void loadMoreData() {
    productController.doGetMoreProducts();
  }

  Widget productsGrid(double defaultSize, List<ProductItemResponse> data) {
    final double itemHeight = defaultSize * 42;
    final double itemWidth = SizeUtil.screenWidth! / 2;
    return GridView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          var product = data[index];
          double realPrice = 0;
          if (product.discountPercentage != 0.0) {
            var discount = (100 - product.discountPercentage);
            realPrice = product.price * 100 / discount;
          } else {
            realPrice = product.price;
          }
          if (realPrice < 0) {
            realPrice = 0;
          }
          return InkWell(
            onTap: () async {},
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  product.thumbnail.length != 0
                      ? Container(
                          height: defaultSize * 13,
                          child: Image.network(
                            product.thumbnail,
                            fit: BoxFit.cover,
                          ))
                      : Container(
                          height: defaultSize * 13,
                          child: Center(child: Text("No Image")),
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
                          height: 5,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(FeatherIcons.star,
                                        color: Colors.orangeAccent,
                                        size: defaultSize * 1.5),
                                  ),
                                ),
                                Text(
                                  decimalFormatter.format(product.rating),
                                  style: TextStyle(
                                    color: Color(0xFF596375),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  "assets/images/ic_like.svg",
                                  width: defaultSize * 1.5,
                                  height: defaultSize * 1.5,
                                ),
                              ),
                            )
                          ],
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
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  color: Color(Constants.appSecondColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                decimalFormatter
                                        .format(product.discountPercentage) +
                                    "% OFF ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              currencyFormatter.format(realPrice),
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
                    currencyFormatter.format(product.price),
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
