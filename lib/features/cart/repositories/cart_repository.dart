import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/exceptions/api_exception.dart';
import '../../../core/extensions/dio_error_extension.dart';
import '../models/cart.dart';
import 'cart_data_source.dart';

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  final dataSource = ref.watch(cartDataSourceProvider);
  return CartRepository(dataSource);
});

class CartRepository {
  CartRepository(this._dataSource);

  final CartDataSource _dataSource;

  Future<Cart> fetchCarts() async {
    return _safetyHttpCall<Cart>(
      func: () async => _dataSource.fetchCarts('1'),
    );
    // try {
    //   final carts = await _dataSource.fetchCarts();
    //   return carts;
    // } on DioError catch (e) {
    //   if (e.isNoConnectionError) {
    //     throw NetworkNotConnectedException(message: e.message);
    //   } else if (e.isConnectionTimeout) {
    //     throw ApiTimeoutException(message: e.message);
    //   }
    //   throw ApiException(message: e.message);
    // } on Exception catch (e) {
    //   throw ApiException(message: e.toString());
    // }
  }

  Future<T> _safetyHttpCall<T>({required Future<T> Function() func}) async {
    try {
      final result = await func();
      return result;
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw NetworkNotConnectedException(message: e.message);
      } else if (e.isConnectionTimeout) {
        throw ApiTimeoutException(message: e.message);
      }
      throw ApiException(message: e.message);
    } on Exception catch (e) {
      throw ApiException(message: e.toString());
    }
  }
}
