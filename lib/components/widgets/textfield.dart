import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';

class Myfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  const Myfield({Key? key, required this.hinttext, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primaryorange,
      cursorWidth: 5,
      autocorrect: false,
      keyboardType: TextInputType.text,
      showCursor: true,
      controller: null,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: primaryorange,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: primaryorange,
          ),
        ),
      ),
    );
  }
}
