import 'package:flutter/material.dart';

import '../../components/app_circular_progress_indicator.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppCircularProgressIndicator(),
      ),
    );
  }
}
