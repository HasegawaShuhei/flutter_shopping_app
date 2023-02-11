import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 検索ワードを保持するprovider
final searchProductQueryProvider = StateProvider<String>(
  (ref) => '',
  name: 'searchProductQueryProvider',
);
