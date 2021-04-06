import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class RoundedContainerWicon extends StatelessWidget {
  final String text, icon;
  final Function press;
  final Color color, textColor;
  const RoundedContainerWicon({
    Key key,
    @required this.icon,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        // ignore: deprecated_member_use
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            color: color,
            onPressed: press,
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  icon,
                  color: yellowColor,
                  width: 33,
                ),
                SizedBox(width: size.width * 0.03),
                Flexible(
                    child: Text(text,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ))),
              ],
            )),
      ),
    );
  }
}
