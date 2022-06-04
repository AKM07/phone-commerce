import 'package:get/get.dart';
import 'package:mobile_skeleton/model/response/ProductItemResponse.dart';
import 'package:mobile_skeleton/model/response/ProductsResponse.dart';
import 'package:mobile_skeleton/repository/ProductRepository.dart';

class ProductController extends GetxController {
  late ProductRepository productRepository;

  ProductController({required this.productRepository});

  final productsData = <ProductItemResponse>[].obs;

  static ProductController get to => Get.find();

  int limit = 10;

  @override
  void onInit() async {
    super.onInit();
    await productRepository
        .getProducts(limit.toString())
        .then((ProductsResponse response) {
      productsData.assignAll(response.products);
    });
  }

  doGetMoreProducts() async {
    limit += 10;
    await productRepository
        .getProducts(limit.toString())
        .then((ProductsResponse response) {
      productsData.addAll(response.products);
    });
  }
}
