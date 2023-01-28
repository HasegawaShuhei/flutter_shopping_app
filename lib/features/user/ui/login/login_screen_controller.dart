import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vibration/vibration.dart';

import '../../../../core/utils/scaffold_messenger.dart';
import '../../providers/login_notifier.dart';

final loginScreenController = Provider.autoDispose(LoginScreenController.new);

class LoginScreenController {
  LoginScreenController(this._ref) {
    _initTextControllers();
    _ref.onDispose(_disposeTextControllers);
  }

  final Ref _ref;
  LoginNotifier get _notifier => _ref.read(loginNotifierProvider.notifier);

  late final TextEditingController nameController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  IconData passwordSuffixIcon({required bool isObscure}) =>
      isObscure ? Icons.visibility_off : Icons.visibility;

  Future<void> login() async {
    final isValidated = _validateFields();
    if (!isValidated) {
      return;
    }

    await _notifier.login(
      userName: nameController.text,
      password: passwordController.text,
    );
  }

  /// textFieldのバリデーション
  bool _validateFields() {
    final errorList = <String>[];
    if (nameController.text.isEmpty) {
      errorList.add('Name is required');
    }
    if (passwordController.text.isEmpty) {
      errorList.add('Password is required');
    }
    if (passwordController.text != confirmPasswordController.text) {
      errorList.add('Password and confirm password do not match');
    }
    if (errorList.isEmpty) {
      return true;
    }
    Vibration.vibrate(duration: 100);
    _ref.read(scaffoldMessengerServiceProvider).showSnackBar(errorList.first);
    return false;
  }

  /// TextEditingControllerの初期化
  void _initTextControllers() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  /// TextEditingControllerの破棄
  void _disposeTextControllers() {
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
