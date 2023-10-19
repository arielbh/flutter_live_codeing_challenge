import 'package:flutter/material.dart';
import 'package:flutter_live_codeing_challenge/bloc/products_bloc.dart';
import 'package:flutter_live_codeing_challenge/services/product_repository.dart';
import 'package:flutter_live_codeing_challenge/view/products_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Choco'),
        ),
        body: BlocProvider(
          create: (context) => ProductsBloc(repository: ProductRepository())..add(ProductsEvent.started()),
          child: ProductWidget(),
        ),
      ),
    );
  }
}
