import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    this.message = 'エラーが発生しました',
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
