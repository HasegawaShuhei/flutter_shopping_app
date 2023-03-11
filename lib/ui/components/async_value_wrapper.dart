import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_circular_progress_indicator.dart';
import 'error_message.dart';

class AsyncValueWrapper<T> extends StatelessWidget {
  const AsyncValueWrapper({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => Center(
        child: ErrorMessage(message: e.toString()),
      ),
      loading: () => const Center(
        child: AppCircularProgressIndicator(),
      ),
    );
  }
}

class AsyncValueSliverWrapper<T> extends StatelessWidget {
  const AsyncValueSliverWrapper({
    super.key,
    required this.value,
    required this.data,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const SliverLoadingIndicator(),
      error: (e, st) => SliverFillRemaining(
        child: Center(
          child: ErrorMessage(message: e.toString()),
        ),
      ),
    );
  }
}

class SliverLoadingIndicator extends HookConsumerWidget {
  const SliverLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SliverFillRemaining(
      child: Center(
        child: AppCircularProgressIndicator(),
      ),
    );
  }
}
