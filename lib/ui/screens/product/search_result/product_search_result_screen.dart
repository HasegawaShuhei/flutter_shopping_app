import 'package:flutter/material.dart';

import 'components/product_serch_result_body.dart';

class ProductSeachResultScreen extends StatelessWidget {
  const ProductSeachResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductSeachResultBody(),
    );
  }
}
