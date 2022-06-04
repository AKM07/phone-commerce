import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_skeleton/model/response/ProductItemResponse.dart';

part 'ProductsResponse.g.dart';

@JsonSerializable()
class ProductsResponse {
  final List<ProductItemResponse> products;

  ProductsResponse({required this.products});

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);

  static ProductsResponse fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
