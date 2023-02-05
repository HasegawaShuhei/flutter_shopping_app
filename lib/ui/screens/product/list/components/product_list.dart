import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/providers/error.dart';
import '../../../../../features/product/providers/current_product.dart';
import '../../../../../features/product/providers/paginated_products_notifier.dart';
import '../../../../components/app_circular_progress_indicator.dart';
import '../../../../components/async_value_wrapper.dart';
import 'product_list_item.dart';

/// ローディング中はインジケーターを表示、
/// エラーの時はデータがあるときの画面でsnackbarを表示したいときを想定
class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// AsyncErrorになった際にダイアログを表示する
    ref.listen(paginatedProductsNotifierProvider, (_, state) {
      if (state is AsyncError) {
        ref
            .read(errorProvider.notifier)
            .update((_) => state.error as Exception?);
      }
    });
    final asyncProducts = ref.watch(paginatedProductsNotifierProvider);

    /// AsyncLoading中、またはvalueがないとき(初回fetchがエラーのときなど？)はインジケーターを表示する
    if (asyncProducts is AsyncLoading || !asyncProducts.hasValue) {
      return const SliverLoadingIndicator();
    }

    final products = asyncProducts.value!.products;
    final isFetching = asyncProducts.value!.isFetching;
    return SliverPadding(
      padding: const EdgeInsets.all(4),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (isFetching && index == products.length) {
              return const _LoadingMoreIndicator();
            }
            return ProviderScope(
              overrides: [
                currentProductProvider.overrideWithValue(products[index]),
              ],
              child: const ProductListItem(),
            );
          },
          childCount: products.length + (isFetching ? 1 : 0),
        ),
      ),
    );
  }
}

class _LoadingMoreIndicator extends StatelessWidget {
  const _LoadingMoreIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: const AppCircularProgressIndicator(),
    );
  }
}
