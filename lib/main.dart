import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'shopping_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ShoppingApp(),
    ),
  );
}
