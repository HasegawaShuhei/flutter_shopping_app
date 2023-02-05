import 'package:flutter/material.dart';

import 'components/product_search_app_bar.dart';
import 'components/product_search_body.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProductSearchAppBar(),
      body: ProductSearchBody(),
    );
  }
}
