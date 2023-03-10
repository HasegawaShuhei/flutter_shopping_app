import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/http/http_client.dart';
import '../../../core/models/pagination_response.dart';
import '../../../core/utils/types.dart';
import '../models/product.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return ProductRepository(client);
});

class ProductRepository {
  ProductRepository(this._client);

  final HttpClient _client;

  Future<PaginationResponse<Product>> fetchProducts({
    int limit = 10,
    int offset = 0,
    required CancelToken cancelToken,
  }) async {
    final json = await _client.get(
      path: '/products',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'skip': offset,
      },
      cancelToken: cancelToken,
    );
    final productsJson = (json['products'] as List).cast<JsonMap>();
    return PaginationResponse<Product>.fromResponse(
      productsJson.map(Product.fromJson).toList(),
      json,
    );
  }

  Future<PaginationResponse<Product>> searchProducts({
    required String query,
    int limit = 10,
    int offset = 0,
  }) async {
    final json = await _client.get(
      path: '/products/search?q=$query',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'skip': offset,
      },
    );
    final productsJson = (json['products'] as List).cast<JsonMap>();
    return PaginationResponse<Product>.fromResponse(
      productsJson.map(Product.fromJson).toList(),
      json,
    );
  }
}
