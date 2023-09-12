import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    Key? key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChange,
  }) : super(key: key);
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChange,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'value is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        // hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.red,
      ),
    );
  }
}

// class CustomTextFiled extends StatelessWidget {
//   CustomTextFiled({
//     Key? key,
//     required this.hint,
//     this.maxLines = 1,
//     this.onSaved,
//   }) : super(key: key);
//
//   final String hint;
//   final int maxLines;
//   void Function(String?)? onSaved;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onSaved: onSaved,
//       validator: (value) {
//         if (value?.isEmpty ?? true) {
//           return 'Filed is required';
//         } else {
//           return null;
//         }
//       },
//       maxLines: maxLines,
//       decoration: InputDecoration(
//         border: buildBorder(),
//         enabledBorder: buildBorder(),
//         hintText: hint,
//       ),
//     );
//   }
//
//   OutlineInputBorder buildBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(8),
//       borderSide: BorderSide(
//         color: Colors.white,
//       ),
//     );
//   }
// }
