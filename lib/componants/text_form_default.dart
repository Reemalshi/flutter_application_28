// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
 TextFieldDefault(TextEditingController textEditingController, {super.key, required this.labelText, required this.icon, required this.isEnabled});
  //  TextEditingController nameController = TextEditingController();
 

 String labelText;
 Icon icon;
 bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        // controller: nameController,
        enabled: isEnabled,
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        )
      ),
    );
  }
}