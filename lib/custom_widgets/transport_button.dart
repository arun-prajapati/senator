import 'package:flutter/material.dart';

class TransportModeButton extends StatefulWidget {
  int? value;
  int? selectedValue;
  Function(int)? onChange;
  IconData? icon;
  TransportModeButton({Key? key,@required this.value,@required this.onChange,@required this.selectedValue,@required this.icon}) : super(key: key);

  @override
  State<TransportModeButton> createState() => _TransportModeButtonState();
}

class _TransportModeButtonState extends State<TransportModeButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        widget.onChange!(widget.value!);
              },
      child: Container(decoration: BoxDecoration(
          color: widget.value==widget.selectedValue?Colors.blue.shade900:Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10)
      ),child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
        child: Icon(widget.icon,size: 40,color: widget.value==widget.selectedValue?Colors.white:Colors.blue.shade900),
      ),),
    );
  }
}
