import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/utils/logger.dart';
import 'shopping_app.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [ProviderLogger()],
      child: const ShoppingApp(),
    ),
  );
}
