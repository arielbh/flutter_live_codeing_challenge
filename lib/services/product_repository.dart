import 'dart:convert';

import 'package:flutter_live_codeing_challenge/model/product.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://8o70y.wiremockapi.cloud/api/v1/products'));
    if (response.statusCode == 200) {
      final List<dynamic> products = jsonDecode(response.body);
      return products.map((dynamic json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
