import 'package:flutter/material.dart';

import 'app_circular_progress_indicator.dart';

class OverlayLoading extends StatelessWidget {
  const OverlayLoading({
    super.key,
    this.backgroundColor = Colors.black26,
    this.showLoadingWidget = true,
  });

  final Color backgroundColor;
  final bool showLoadingWidget;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: SizedBox.expand(
        child: showLoadingWidget
            ? const Center(child: AppCircularProgressIndicator())
            : null,
      ),
    );
  }
}
