// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductItemResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductItemResponse _$ProductItemResponseFromJson(Map<String, dynamic> json) =>
    ProductItemResponse(
      json['id'] as int,
      json['title'] as String,
      json['description'] as String,
      (json['price'] as num).toDouble(),
      (json['discountPercentage'] as num).toDouble(),
      (json['rating'] as num).toDouble(),
      (json['stock'] as num).toDouble(),
      json['brand'] as String,
      json['category'] as String,
      json['thumbnail'] as String,
      (json['image'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductItemResponseToJson(
        ProductItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
    };
