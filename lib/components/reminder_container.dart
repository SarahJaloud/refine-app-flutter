import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
/*
import 'package:flutter_svg/flutter_svg.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
*/

class ReminderContainer extends StatelessWidget {
  final String text, icon;
  final Function press;
  final Color color, textColor;
  const ReminderContainer({
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
                  color: kPrimaryLightColor,
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
