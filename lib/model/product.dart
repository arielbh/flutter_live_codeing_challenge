import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String imageUrl,
    required String name,
    required String description,
    required double price,
  }) = _Product;
  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
