import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LevelsMenu extends StatelessWidget {
  const LevelsMenu({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFedecf1),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: yellowColor,
              width: 40,
            ),
            SizedBox(width: 40),
            Expanded(
                child: Text(text,
                    style: TextStyle(
                        color: kPrimaryLightColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
