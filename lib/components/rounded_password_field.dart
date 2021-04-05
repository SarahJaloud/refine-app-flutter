import 'package:flutter/material.dart';
import 'package:refineapp/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "Password",
        icon: Icon(Icons.lock, color: yellowColor),
        suffixIcon: Icon(Icons.visibility, color: yellowColor),
        border: InputBorder.none,
      ),
    ));
  }
}
