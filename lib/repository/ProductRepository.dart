import 'package:dio/dio.dart';
import 'package:mobile_skeleton/model/response/ProductsResponse.dart';
import 'package:mobile_skeleton/utils/injector.dart';

import '../constants/UrlConstants.dart';

class ProductRepository {
  final Dio dio = locator<Dio>();

  Future<ProductsResponse> getProducts(String limit) async {
    try {
      dio.options.contentType = "application/json";
      Response response = await dio.get(UrlConstants.GET_PRODUCTS_URL,
          queryParameters: {"limit": limit});

      return ProductsResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return new ProductsResponse(products: []);
    }
  }
}
