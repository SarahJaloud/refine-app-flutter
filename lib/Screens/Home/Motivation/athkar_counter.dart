import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/Motivation/motivation.dart';
import 'package:refineapp/shared/constants.dart';
//import 'package:refineapp/shared/constants.dart';

class AthkarCounter extends StatefulWidget {
  @override
  _AthkarCounterState createState() => _AthkarCounterState();
}

class _AthkarCounterState extends State<AthkarCounter> {
  int athkarCounter = 0;

  void increase() {
    setState(() {
      athkarCounter++;
    });
  }

  void restCounter() {
    setState(() => athkarCounter = 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                myRoww(),
                SizedBox(
                  height: size.height * 0.3,
                ),
                RadiantGradientMask(
                  child: (Text(
                    "$athkarCounter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: size.height * 0.15,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      size: 45,
                      color: kPrimaryColor,
                    ),
                    onPressed: increase,
                  ),
                )
              ],
            )));
  }

  Row myRoww() {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            size: 40,
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MotivationScreen();
            }));
          },
        ),
        SizedBox(
          width: size.width * 0.63,
        ),
        IconButton(
          icon: Icon(
            Icons.sync_rounded,
            size: 40,
            color: kPrimaryColor,
          ),
          onPressed: restCounter,
        ),
      ],
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Color(0xFFF0C38E), Color(0xFFF1AA9B)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(bounds),
      child: child,
    );
  }
}
