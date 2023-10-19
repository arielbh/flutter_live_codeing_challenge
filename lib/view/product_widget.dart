import 'package:flutter/material.dart';
import 'package:flutter_live_codeing_challenge/model/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Description:",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Text(
                      product.description,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Price:",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.price.toString(),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              Image.network(product.imageUrl, height: 500, width: 500),
            ],
          ),
        ));
  }
}
