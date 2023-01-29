import 'dart:async';

import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.errorMessage,
    this.func,
  });

  final String errorMessage;
  final FutureOr<void> Function()? func;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('An error occured'),
            Text(errorMessage),
          ],
        ),
      ),
    );
  }
}
