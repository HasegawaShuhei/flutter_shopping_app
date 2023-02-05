import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class ProductSearchField extends StatelessWidget {
  const ProductSearchField({
    super.key,
    this.controller,
    this.enabled = true,
    this.autofocus = false,
    this.onClear,
    this.onSubmitted,
  });

  final TextEditingController? controller;
  final bool enabled;
  final bool autofocus;
  final void Function()? onClear;
  final void Function()? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight * 0.8,
      child: TextField(
        controller: controller,
        enabled: enabled,
        autofocus: autofocus,
        textInputAction: TextInputAction.search,
        style: const TextStyle(color: AppColors.black),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.lightGrey,
          contentPadding: const EdgeInsets.only(bottom: 4),
          prefixIcon: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              print('hello');
            },
            child: const Icon(
              Icons.search,
              color: AppColors.black,
            ),
          ),
          suffixIcon: controller != null
              ? ValueListenableBuilder<TextEditingValue>(
                  valueListenable: controller!,
                  builder: (_, value, __) {
                    return Visibility(
                      visible: value.text.isNotEmpty,
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () => onClear?.call(),
                        child: const Icon(
                          Icons.close,
                          color: AppColors.black,
                        ),
                      ),
                    );
                  },
                )
              : null,
        ),
        onSubmitted: (value) {
          if (value.isEmpty) return;
          print(value);
        },
      ),
    );
  }
}
