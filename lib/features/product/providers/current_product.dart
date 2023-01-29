import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/product.dart';

final currentProductProvider =
    Provider.autoDispose<Product>((ref) => throw UnimplementedError());
