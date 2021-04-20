import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/shared/constants.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: press,
          color: kPrimaryColor,
          child: SvgPicture.asset(icon, width: 53, color: yellowColor),
          padding: EdgeInsets.all(23),
          shape: CircleBorder(),
        ),
        SizedBox(width: 20),
        Expanded(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: yellowColor),
        )),
        //SizedBox(height: size.height * 0.02),
      ],
    );
  }
}
