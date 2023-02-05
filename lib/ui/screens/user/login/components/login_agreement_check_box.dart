// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../providers/login_notifier.dart';

// class LoginAgreementCheckBox extends HookConsumerWidget {
//   const LoginAgreementCheckBox({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isPolicyAgreed =
//         ref.watch(loginNotifierProvider.select((s) => s.value!.isPolicyAgreed));
//     return Row(
//       children: [
//         Checkbox(
//           value: isPolicyAgreed,
//           onChanged: (value) {
//             ref
//                 .read(loginNotifierProvider.notifier)
//                 .setIsPolicyAgreed(isPolicyAgreed: value!);
//           },
//         ),
//         const Text(
//           'I agree to the Terms of Service and Privacy Policy',
//           style: TextStyle(fontSize: 12),
//         ),
//       ],
//     );
//   }
// }
