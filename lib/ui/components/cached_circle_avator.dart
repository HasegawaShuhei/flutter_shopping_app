import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/styles/app_colors.dart';
import 'app_circular_progress_indicator.dart';

// final cachedCircleAvatarCacheManagerProvider = Provider<BaseCacheManager?>(
//   (ref) => null,
// );

class CachedCircleAvatar extends HookConsumerWidget {
  const CachedCircleAvatar({
    super.key,
    required this.url,
    this.size = 80,
  });

  final String url;
  final double size;
  // CacheManager get _defaultCacheManager => CacheManager(
  //       Config(
  //         'CachedCircleAvatarKey',
  //         stalePeriod: const Duration(days: 1),
  //         maxNrOfCacheObjects: 20,
  //       ),
  //     );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final cacheManager = ref.watch(cachedCircleAvatarCacheManagerProvider);
    // final circleAvatarKey = GlobalKey(debugLabel: 'CircleAvatar');
    return CachedNetworkImage(
      // cacheManager: cacheManager ?? _defaultCacheManager,
      height: size,
      width: size,
      imageUrl: url,
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          // key: circleAvatarKey,
          radius: size / 2,
          backgroundColor: AppColors.transparent,
          backgroundImage: imageProvider,
        );
      },
      placeholder: (context, url) => const AppCircularProgressIndicator(),
      errorWidget: (_, __, dynamic error) {
        return Icon(
          Icons.error,
          size: size,
        );
      },
    );
  }
}
