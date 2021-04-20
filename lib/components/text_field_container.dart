import 'package:flutter/material.dart';

import '../shared/constants.dart';

class TextFeildContainer extends StatefulWidget {
  final Widget child;
  const TextFeildContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _TextFeildContainerState createState() => _TextFeildContainerState();
}

class _TextFeildContainerState extends State<TextFeildContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: widget.child,
    );
  }
}
