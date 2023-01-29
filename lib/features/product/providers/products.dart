import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/paginated_products.dart';
import '../repositories/product_repositories.dart';

final productsProvider = FutureProvider<PaginatedProducts>((ref) async {
  final repository = ref.read(productRepositoryProvider);
  return repository.fetchPaginatedProducts();
});
