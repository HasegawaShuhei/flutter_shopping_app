import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/styles/app_text.dart';
import '../../../../../features/product/providers/search_products_notifier.dart';

class ProductSearchResultNumber extends HookConsumerWidget {
  const ProductSearchResultNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNumber =
        ref.watch(searchProductsNotifierProvider).value?.totalString;
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
      sliver: SliverToBoxAdapter(
        child: RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: '検索結果：',
                style: AppTextStytles.s16,
              ),
              TextSpan(
                text: productNumber,
                style: AppTextStytles.s16Wbold,
              ),
              const TextSpan(
                text: ' 件',
                style: AppTextStytles.s16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
