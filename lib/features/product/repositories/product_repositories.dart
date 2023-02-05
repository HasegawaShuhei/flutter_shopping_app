import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/http/http_client.dart';
import '../../../core/utils/paginated_response.dart';
import '../../../core/utils/types.dart';
import '../models/product.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final client = ref.read(httpClientProvider);
  return ProductRepository(client);
});

class ProductRepository {
  ProductRepository(this._client);

  final HttpClient _client;

  Future<PaginatedResponse<Product>> fetchProducts({
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
    final productsJson = (json['products'] as List).cast<JsonMap>();
    return PaginatedResponse<Product>.fromResponse(
      productsJson.map(Product.fromJson).toList(),
      json,
    );
  }
}
