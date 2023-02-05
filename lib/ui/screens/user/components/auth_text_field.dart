import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.isObscure = false,
    this.onTap,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool isPassword;
  final bool isObscure;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      cursorColor: AppColors.white,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(10),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
        prefixIcon: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: onTap,
                child: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: Theme.of(context).iconTheme.color,
                ),
              )
            : null,
      ),
    );
  }
}
