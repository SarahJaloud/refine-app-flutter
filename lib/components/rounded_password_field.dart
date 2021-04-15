import 'package:flutter/material.dart';
import 'package:refineapp/components/text_field_container.dart';

import '../shared/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
        child: TextFormField(
      validator: (val) => val.length < 6
          ? 'Please make your password longer than 6 characters'
          : null,
      obscureText: true,
      onChanged: widget.onChanged,
      //-----------------------------------------------------------
      decoration: InputDecoration(
        filled: true,
        fillColor: kPrimaryColor,
        hintText: "Password",
        icon: Icon(Icons.lock, color: yellowColor),
        //suffixIcon: Icon(Icons.visibility, color: yellowColor),
        border: InputBorder.none,
      ),
    ));
  }
}
