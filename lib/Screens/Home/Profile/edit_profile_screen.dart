import 'package:flutter/material.dart';
import 'package:refineapp/Screens/Home/Profile/profile_screen.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/shared/constants.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            size: 30,
            color: kPrimaryLightColor,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfileScreen();
            }));
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              size: 30,
              color: kPrimaryLightColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
