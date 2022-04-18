import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  TextEditingController? controller;
  String? hint;

   CustomTextField({Key? key,this.hint,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
            color: Colors.white, style: BorderStyle.solid, width: 0.80),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint
        ),
      ),
    );
  }
}
