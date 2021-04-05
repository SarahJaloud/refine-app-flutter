import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10 * 1.5),
        child: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(
                  top: 25.0,
                  left: 25.0,
                  right: 25.0,
                ),
                height: size.height * 0.15,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(26),
                      bottomRight: Radius.circular(26),
                    )),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Refine",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 29,
                          ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/user.svg",
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ))
          ],
        ));
  }
}
