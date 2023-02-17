import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/http/dio/dio.dart';
import '../models/cart.dart';

part 'cart_data_source.g.dart';

final cartDataSourceProvider = Provider(
  (ref) => CartDataSource(ref.watch(dioProvider)),
);

@RestApi()
abstract class CartDataSource {
  factory CartDataSource(Dio dio) = _CartDataSource;

  @GET('/carts/{id}')
  Future<Cart> fetchCarts(@Path('id') String id);
}
