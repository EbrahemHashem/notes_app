import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kprimaryColor,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
