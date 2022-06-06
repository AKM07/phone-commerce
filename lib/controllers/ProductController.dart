import 'package:get/get.dart';
import 'package:mobile_skeleton/model/response/ProductItemResponse.dart';
import 'package:mobile_skeleton/model/response/ProductsResponse.dart';
import 'package:mobile_skeleton/repository/ProductRepository.dart';

class ProductController extends GetxController {
  late ProductRepository productRepository;

  ProductController({required this.productRepository});

  var productsData = <ProductItemResponse>[].obs;

  static ProductController get to => Get.find();

  var limit = 10.obs;

  @override
  void onInit() async {
    super.onInit();
    doGetProducts();
  }

  doGetProducts() async {
    await productRepository
        .getProducts(limit.value.toString())
        .then((ProductsResponse response) {
      productsData.assignAll(response.products);
    });
  }

  doRefreshProducts() async {
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
      productsData.clear();
      productsData.addAll(response.products);
    });
    print("response.products " + productsData.length.toString());
  }
}
