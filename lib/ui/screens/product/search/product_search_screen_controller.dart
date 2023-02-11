import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/routing/app_router.gr.dart';
import '../../../../features/product/providers/search_product_query.dart';
import '../../../../features/product/providers/search_products_notifier.dart';

final productSearchScreenControllerProvider =
    Provider.autoDispose<ProductSearchScreenController>(
  ProductSearchScreenController.new,
);

class ProductSearchScreenController {
  ProductSearchScreenController(this._ref) {
    _initTextController();
    _ref.onDispose(_disposeTextController);
  }
  final Ref _ref;

  late final TextEditingController searchQueryController;

  void clearController() {
    searchQueryController.clear();
  }

  Future<void> onSearch({required BuildContext context}) async {
    _ref.invalidate(searchProductsNotifierProvider);
    context.router.popUntilRoot();
    await context.router.push(const ProductSeachResultRoute());
  }

  void _initTextController() {
    searchQueryController = TextEditingController()
      ..addListener(() {
        _ref
            .read(searchProductQueryProvider.notifier)
            .update((_) => searchQueryController.text);
      });
    final query = _ref.read(searchProductQueryProvider);
    searchQueryController
      ..text = query
      ..selection = TextSelection(
        baseOffset: 0,
        extentOffset: query.length,
      );
  }

  void _disposeTextController() {
    searchQueryController.dispose();
  }
}
