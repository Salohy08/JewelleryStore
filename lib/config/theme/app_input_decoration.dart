import 'package:flutter/material.dart';

class AppInputDecoration {
  AppInputDecoration() {}

  /// Input global style
  static InputDecoration textField(
      {required String hintText,
      IconData? icon,
      Color? fillColor,
      Color? iconColor}) {
    return InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        hintStyle: TextStyle(fontSize: 20),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        border: const OutlineInputBorder());
  }
}
