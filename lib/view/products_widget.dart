import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_live_codeing_challenge/bloc/products_bloc.dart';
import 'package:flutter_live_codeing_challenge/model/product.dart';
import 'package:flutter_live_codeing_challenge/view/product_widget.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        final items = state.when<List<Product>>(initial: () => [], withItems: (withItems) => withItems);
        return ListView.builder(
          itemCount: items.length, // Number of items in the list
          itemBuilder: (BuildContext context, int index) {
            final product = items[index];
            return ListTile(
              title: Text(product.name), // Item title
              subtitle: Text("${product.description} ${product.price} "), // Item subtitle
              leading: const Icon(Icons.star), // Leading icon for the item
              trailing: const Icon(Icons.arrow_forward), // Trailing icon for the item
              onTap: () {
                // Action to perform when the item is tapped
                // ignore: avoid_print
                print('Tapped item $index');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductWidget(product: product)),
                );
              },
            );
          },
        );
      },
    );
  }
}
