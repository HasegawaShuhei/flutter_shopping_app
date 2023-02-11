import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/interfaces/pagination_async_notifier_interface.dart';
import '../../../../../core/models/pagination_state.dart';
import '../../../../../core/providers/error.dart';
import 'app_circular_progress_indicator.dart';
import 'async_value_wrapper.dart';

/// ローディング中はインジケーターを表示、
/// エラーの時はデータがあるときの画面でsnackbarを表示したいときを想定
class PaginationListView<T> extends HookConsumerWidget {
  const PaginationListView({
    super.key,
    required this.provider,
    required this.listItem,
  });

  final AutoDisposeAsyncNotifierProvider<PaginationAsyncNotifierInterface<T>,
      PaginationState<T>> provider;
  final Widget Function(T data) listItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// AsyncErrorになった際にダイアログを表示する
    ref.listen(provider, (_, state) {
      if (state is AsyncError) {
        ref
            .read(errorProvider.notifier)
            .update((_) => state.error as Exception?);
      }
    });
    final asyncValue = ref.watch(provider);

    /// AsyncLoading中、Refreshing中、またはvalueがないとき(初回fetchがエラーのときなど？)はインジケーターを表示する
    if (asyncValue is AsyncLoading ||
        asyncValue.isRefreshing ||
        !asyncValue.hasValue) {
      return const SliverLoadingIndicator();
    }

    final results = asyncValue.value!.results;
    final isFetching = asyncValue.value!.isFetching;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (isFetching && index == results.length) {
            return const _LoadingMoreIndicator();
          }
          return listItem(results[index]);
        },
        childCount: results.length + (isFetching ? 1 : 0),
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
