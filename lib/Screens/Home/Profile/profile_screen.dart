import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:refineapp/Screens/Home/Profile/components/avatar.dart';
import 'package:refineapp/Screens/Home/Profile/edit_profile_screen.dart';
import 'package:refineapp/components/costum_bottom_nav_bar.dart';
import 'package:refineapp/components/rounded_button.dart';
import 'package:refineapp/enums.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
//import 'package:path/path.dart';

//import 'package:refineapp/services/auth.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User userr;
  getUserData() async {
    //User userData = await FirebaseAuth.instance.currentUser();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Builder(
          builder: (context) => Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.17,
                    ),
                    ProfilePic(),
                    ProfileInfo(size: size, auth: _auth),
                  ],
                ),
              )),
      bottomNavigationBar: CostumBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

//---------------------------------------------------------

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key key,
    @required this.size,
    @required FirebaseAuth auth,
  })  : _auth = auth,
        super(key: key);

  final Size size;
  final FirebaseAuth _auth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 70, horizontal: 23),
        width: size.width * 0.9,
        padding: EdgeInsets.only(
          top: 35.0,
          left: 15.0,
          right: 15.0,
        ),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width * 0.04,
                ),

                SvgPicture.asset(
                  "assets/icons/user.svg",
                  color: pinkColor,
                  width: 30,
                ),

                SizedBox(
                  width: size.width * 0.04,
                ),
                Text(
                  "Sarah",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
                //Text("${userr._name}")
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width * 0.04,
                ),
                SvgPicture.asset(
                  "assets/icons/email.svg",
                  color: pinkColor,
                  width: 30,
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Text(
                  "sarah@refine.com",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
                //Text("${userr._name}")
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: <Widget>[
                RoundedButton(
                  text: "EDIT",
                  textColor: kPrimaryLightColor,
                  color: yellowColor,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EditProfile();
                    }));
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RoundedButton(
                  text: "SIGN OUT",
                  textColor: kPrimaryLightColor,
                  color: Colors.white,
                  press: () async {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacementNamed('/welcome');
                    await _auth.signOut();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File _image;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Future getImage() async {
      var image = await _picker.getImage(source: ImageSource.gallery);

      setState(() {
        _image = File(image.path);
        print('Image Path $_image');
      });
    }

    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        // ignore: deprecated_member_use
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
              radius: 100,
              backgroundColor: kPrimaryColor,
              child: ClipOval(
                  child: new SizedBox(
                width: 110,
                height: 110,
                child: (_image != null)
                    ? Image.file(_image, fit: BoxFit.fill)
                    : Image.network(
                        "https://i.ibb.co/2h9W61V/profile-picture.jpg",
                        fit: BoxFit.fill),
              ))),
        ],
      ),
    );
  }
}
