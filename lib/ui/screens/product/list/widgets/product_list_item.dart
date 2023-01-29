import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../features/product/providers/current_product.dart';
import '../../../../common/cached_circle_avator.dart';

class ProductListItem extends HookConsumerWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(currentProductProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedCircleAvatar(
              url: product.thumbnailUrl,
              size: 48,
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.brand),
                  Text(product.title),
                  _RatingBar(rating: product.rating),
                  Text(product.priceForDisplay),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RatingBar extends StatelessWidget {
  const _RatingBar({required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(rating.toString()),
        const Gap(4),
        RatingBar.builder(
          initialRating: rating,
          allowHalfRating: true,
          ignoreGestures: true,
          itemSize: 16,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (_) {},
        ),
      ],
    );
  }
}
