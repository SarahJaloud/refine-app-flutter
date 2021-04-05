import 'package:flutter/cupertino.dart';
import 'package:refineapp/constants.dart';

class EmptyContainer extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const EmptyContainer({
    Key key,
    this.text,
    this.color,
    this.textColor,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.9,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 50.0,
            left: 25.0,
            right: 25.0,
          ),
          height: size.height * 0.1,
          decoration: BoxDecoration(
              color: yellowColor, borderRadius: BorderRadius.circular(16)),
          child: Row(
            children: <Widget>[
              Text(text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
