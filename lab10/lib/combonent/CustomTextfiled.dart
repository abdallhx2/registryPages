import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class defulttextlaple extends StatelessWidget {
  defulttextlaple(
      {super.key, this.hinttext, this.lableText, required controller});
  final String? hinttext;
  final String? lableText;

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
        // key: formkay,
        TextFormField(
      controller: controller,
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Text is empty';
      //   }
      // },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: ((value) {}),
      decoration: InputDecoration(
        labelText: lableText,
        hintText: hinttext,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Color.fromARGB(92, 161, 161, 161))),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0)),
      ),
    );
  }
}
