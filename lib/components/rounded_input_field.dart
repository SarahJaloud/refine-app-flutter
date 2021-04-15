import 'package:flutter/material.dart';
import 'package:refineapp/components/text_field_container.dart';
//import 'package:refineapp/components/text_field_container.dart';
import 'package:refineapp/shared/constants.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    controller,
  }) : super(key: key);
  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
        child: TextFormField(
      onChanged: widget.onChanged,
      validator: (val) =>
          val.isEmpty ? 'Please fill in the required informarion' : null,
      //----------------------------------------------------------------
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          fillColor: kPrimaryColor,
          icon: Icon(
            widget.icon,
            color: yellowColor,
          ),
          border: InputBorder.none,
          hintText: widget.hintText),
      //border: InputBorder.none,
    ));
  }
}
