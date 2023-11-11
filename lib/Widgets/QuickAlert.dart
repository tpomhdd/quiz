// import 'package:flutter/material.dart';
// import 'package:quickalert/models/quickalert_type.dart';
// class QuickAlert extends StatefulWidget {
//   const QuickAlert({Key? key}) : super(key: key);
//
//   @override
//   State<QuickAlert> createState() => _QuickAlertState();
// }
//
// class _QuickAlertState extends State<QuickAlert> {
//   @override
//   Widget build(BuildContext context) {
//     return QuickAlert.show(
//       context: context,
//       type: QuickAlertType.custom,
//       barrierDismissible: true,
//       confirmBtnText: 'Save',
//       customAsset: 'assets/custom.gif',
//       widget: TextFormField(
//         decoration: const InputDecoration(
//           alignLabelWithHint: true,
//           hintText: 'Enter Phone Number',
//           prefixIcon: Icon(
//             Icons.phone_outlined,
//           ),
//         ),
//         textInputAction: TextInputAction.next,
//         keyboardType: TextInputType.phone,
//         onChanged: (value) => message = value,
//       ),
//       onConfirmBtnTap: () async {
//         if (message.length < 5) {
//           await QuickAlert.show(
//             context: context,
//             type: QuickAlertType.error,
//             text: 'Please input something',
//           );
//           return;
//         }
//         Navigator.pop(context);
//         await Future.delayed(const Duration(milliseconds: 1000));
//         await QuickAlert.show(
//           context: context,
//           type: QuickAlertType.success,
//           text: "Phone number '$message' has been saved!.",
//         );
//       },
//     );
//   },
//   title: 'Custom',
//   text: 'Custom Widget Alert',
//   leadingImage: 'assets/custom.gif',
//   );
//   }
// }
