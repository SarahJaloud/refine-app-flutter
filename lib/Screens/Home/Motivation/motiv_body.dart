import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/Home/Motivation/athkar_counter.dart';
import 'package:refineapp/Screens/Home/Motivation/components/motivation_cards.dart';
import 'package:refineapp/controllers/quotes_controller.dart';
import 'package:refineapp/shared/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    QuotesController _quoteController = Get.put(QuotesController());
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.05),
          RoundedContainer(
            color: yellowColor,
            text: "Athkar Counter",
            textColor: kPrimaryColor,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AthkarCounter();
              }));
            },
          ),
          Expanded(
            child: PageView.builder(
              physics: PageScrollPhysics(),
              controller: _quoteController.pageController,
              itemCount: _quoteController.quotes.length,
              itemBuilder: (context, index) =>
                  MotivationCard(quote: _quoteController.quotes[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedContainer({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            color: color,
            onPressed: press,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/misbah.png",
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Flexible(
                    child: Text(text,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 26,
                        ))),
              ],
            )),
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: kPrimaryColor,
          spreadRadius: 0.4,
          blurRadius: 8,
          offset: Offset(4, 8),
        ),
      ]),
    );
  }
}
