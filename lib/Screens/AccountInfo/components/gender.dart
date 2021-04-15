import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/constants.dart';

class Gender extends StatelessWidget {
  const Gender({
    Key key,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // ignore: deprecated_member_use
      FlatButton(
        onPressed: press,
        color: yellowColor,
        child: SvgPicture.asset(icon, width: 20, color: kPrimaryLightColor),
        padding: EdgeInsets.all(12),
        shape: CircleBorder(),
      ),
    ]);
  }
}
