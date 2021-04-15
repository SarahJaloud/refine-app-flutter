import 'package:flutter/material.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  //final spinkit = SpinKitThreeBounce();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kPrimaryLightColor,
        child: Center(
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
