import 'package:flutter/material.dart';
import 'package:refineapp/components/text_field_container.dart';
import 'package:refineapp/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.email,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: yellowColor,
            ),
            border: InputBorder.none,
            hintText: hintText),
        //border: InputBorder.none,
      ),
    );
  }
}
