import 'package:flutter/material.dart';

class RoundedBorderDropdown extends StatefulWidget {
  final List<String>? dropdownValues;
  final Function(String)? onChanged;



 RoundedBorderDropdown({Key? key,this.dropdownValues,this.onChanged}) : super(key: key);
  @override
  State<RoundedBorderDropdown> createState() => _RoundedBorderDropdownState();
}

class _RoundedBorderDropdownState extends State<RoundedBorderDropdown> {


 //The list of values we want on the dropdown
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
      child: DropdownButton(
        underline:DropdownButtonHideUnderline(child: Container()),
        items: widget.dropdownValues!
            .map((value) => DropdownMenuItem(
          child: Text(value),
          value: value,
        ))
            .toList(),
        onChanged: (String? value) {
          widget.onChanged!(value!);
        },
        isExpanded: true,
        value: widget.dropdownValues!.first,
      ),
    );
  }
}