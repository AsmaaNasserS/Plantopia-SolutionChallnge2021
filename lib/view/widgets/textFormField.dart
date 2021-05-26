import 'package:flutter/material.dart';

import '../../const.dart';

class DefTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function validator;
  final IconData prefix;
  final Function submit;
  final TextInputType type;
  final int lines;
  final bool obsecureText;

  DefTextField(
      {this.controller,
      @required this.label,
      @required this.validator,
      @required this.type,
      this.submit,
      this.obsecureText = false,
      this.lines,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,

      style: TextStyle(
        color: Colors.grey.shade600,fontSize: 20
      ),
      validator: validator,
      textInputAction: TextInputAction.next,
      keyboardType: type,
      onFieldSubmitted: submit,
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
      obscureText: obsecureText,
    );
  }
}
