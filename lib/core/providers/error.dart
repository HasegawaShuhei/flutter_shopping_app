import 'package:hooks_riverpod/hooks_riverpod.dart';

final errorProvider = StateProvider.autoDispose<Exception?>((ref) => null);
