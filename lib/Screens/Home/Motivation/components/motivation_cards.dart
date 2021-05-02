import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/Motivation/Models/motivational_quotes.dart';
import 'package:refineapp/shared/constants.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({
    Key key,
    // for passing
    @required this.quote,
  }) : super(key: key);

  final Quotes quote;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 23),
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(quote.quote,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              )),
          SizedBox(height: size.height * 0.05),
          Image.asset(
            "assets/images/grow.png",
            width: 200,
            height: 100,
          ),
        ],
      ),
    );
  }
}
