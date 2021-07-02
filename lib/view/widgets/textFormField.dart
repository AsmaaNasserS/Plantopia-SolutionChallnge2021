import 'package:flutter/material.dart';

import '../../const.dart';



Widget DefTextField({
  int lines,
  String initialValue,
  TextEditingController controller,
   TextInputType type,
   IconData prefix,
   String label,
  Function validator,
   String validatorMessage,
  bool obsecureText  = false,
  bool isThereSuffixIcon = false,
  Icon suffixIcon,
  Function onSuffixIconPress,
  Function onChanged,
  Function onTap,
  Function submit,
}) =>
    TextFormField(
      maxLines: lines,
      onChanged: onChanged,
      controller: controller,
      onTap: onTap,
      keyboardType: type,
      obscureText: obsecureText,
      decoration: InputDecoration(

        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kInActivelogInButtonColor,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: kButtonTextColour,
        hintStyle: TextStyle(color: Colors.grey.shade400),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kActiveBackButtonColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: label,
        prefixIcon: Icon(
          prefix,
          size: 20,
          color: Colors.grey.shade400,
        ),
        labelStyle: TextStyle(fontWeight: FontWeight.w600,),
      ),
      onFieldSubmitted: submit,
      validator: (value) {
        if (value.isEmpty) return (validatorMessage);
        return null;
      },
    );






// Widget DeffTextField (
// {
//    TextEditingController controller,
//    String label,
//    Function validator,
//    Function onChanged,
//    IconData prefix,
//    Function submit,
//    TextInputType type,
//    int lines,
//    bool obsecureText = false,
//    bool readOnly,
//
//    String initialValue,
// })=> TextFormField(
//       maxLines: lines,
//       initialValue: initialValue,
//       style: TextStyle(
//         color: Colors.grey.shade600,fontSize: 20
//       ),
//       validator: validator,
//       keyboardType: type,
//       onFieldSubmitted: submit,
//       decoration: InputDecoration(
//
//         contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(25.0),
//           borderSide: BorderSide(
//             color: Colors.red,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.0),
//           borderSide: BorderSide(
//             color: Colors.red,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: kInActivelogInButtonColor,
//           ),
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         filled: true,
//         fillColor: kButtonTextColour,
//         hintStyle: TextStyle(color: Colors.grey.shade400),
//
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: kActiveBackButtonColor,
//           ),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         labelText: label,
//         prefixIcon: Icon(
//           prefix,
//           size: 20,
//           color: Colors.grey.shade400,
//         ),
//         labelStyle: TextStyle(fontWeight: FontWeight.w600,),
//       ),
//       obscureText: obsecureText,
//       onChanged: onChanged,
//
//     );
