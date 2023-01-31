import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/http/http_client.dart';
import '../models/paginated_products.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final client = ref.read(httpClientProvider);
  return ProductRepository(client);
});

class ProductRepository {
  ProductRepository(this._client);

  final HttpClient _client;

  Future<PaginatedProducts> fetchPaginatedProducts({
    int limit = 10,
    int offset = 0,
  }) async {
    final json = await _client.get(
      path: '/products',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'skip': offset,
      },
    );
    return PaginatedProducts.fromJson(json);
  }
}
