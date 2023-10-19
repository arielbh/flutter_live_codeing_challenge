import 'package:bloc/bloc.dart';
import 'package:flutter_live_codeing_challenge/model/product.dart';
import 'package:flutter_live_codeing_challenge/services/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({required ProductRepository repository}) : super(_Initial()) {
    on<ProductsEvent>((event, emit) async {
      final data = await repository.fetchProducts();
      emit(ProductsState.withItems(products: data));
    });
  }
}
