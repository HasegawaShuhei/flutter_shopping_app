import 'package:flutter/material.dart';

class ProductSliverAppBar extends StatelessWidget {
  const ProductSliverAppBar({
    super.key,
    required this.onTap,
    required this.child,
  });

  final Future<void> Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floating: true,
      title: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async => onTap(),
        child: child,
      ),
    );
  }
}
