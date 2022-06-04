import 'package:json_annotation/json_annotation.dart';

part 'ProductItemResponse.g.dart';

@JsonSerializable()
class ProductItemResponse {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final double stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> image;

  ProductItemResponse(
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ProductItemResponseToJson(this);

  static ProductItemResponse fromJson(Map<String, dynamic> json) =>
      _$ProductItemResponseFromJson(json);
}
