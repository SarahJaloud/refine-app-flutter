import 'package:flutter/material.dart';
import 'package:refineapp/Screens/StudyBook/Intermediate/intermediate_screen.dart';
import 'package:refineapp/shared/constants.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class VocabularyScreenI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: kPrimaryColor,
          elevation: 0,
          shape: ContinuousRectangleBorder(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IntermediateScreen();
              }));
            },
            child: Icon(Icons.close),
          ),
          title: Text(
            'Vocabulary',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          centerTitle: true,
        ),

        //----------------
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                children: [
                  Text(
                    "Jobs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  //--------
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/vet.png"),
                  RoundedContainer(
                    text: "Vet",
                    textColor: kPrimaryColor,
                    color: yellowColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(
                      height: 1.0,
                      width: 300.0,
                      color: kPrimaryColor,
                    ),
                  ),
                  Image.asset("assets/images/pilot.png"),
                  RoundedContainer(
                    text: "Pilot",
                    textColor: kPrimaryColor,
                    color: yellowColor,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class RoundedContainer extends StatelessWidget {
  final String text;

  final Color color, textColor;
  const RoundedContainer({
    Key key,
    this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            color: color,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
