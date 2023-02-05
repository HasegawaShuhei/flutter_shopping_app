import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

  void _initTextController() {
    searchQueryController = TextEditingController();
  }

  void _disposeTextController() {
    searchQueryController.dispose();
  }
}
