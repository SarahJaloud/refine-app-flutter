import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: (IconButton(
      icon: SvgPicture.asset("assets/icons/motivation-logo.svg"),
      onPressed: () {},
    )));
  }
}
