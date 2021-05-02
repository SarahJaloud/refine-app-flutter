import 'package:flutter/material.dart';
//import 'package:refineapp/Screens/Home/Profile/components/avatar.dart';
//import 'package:refineapp/Screens/Home/Profile/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refineapp/shared/constants.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File _image;
  final snackBar = SnackBar(content: Text('Profile Picture Uploaded'));
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      var image = await _picker.getImage(source: ImageSource.gallery);

      setState(() {
        if (image != null) {
          _image = File(image.path);
        } else {
          print('No image selected.');
        }
      });
    }

    Future uploadPic(BuildContext context) async {
      String fileName = basename(_image.path);
      Reference firebaseStorageRef =
          FirebaseStorage.instance.ref().child(fileName);
      UploadTask uploadTask = firebaseStorageRef.putFile(_image);
      TaskSnapshot taskSnapshot = await uploadTask;
      taskSnapshot.ref.getDownloadURL().then(
            (value) => print("Done: $value"),
          );
      if (this.mounted) {
        setState(() {
          print("Profile Picture uploaded");
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }
    }

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
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
              Navigator.of(context).pop();
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
              onPressed: () {
                uploadPic(context);
              },
            ),
          ],
        ),
        backgroundColor: kPrimaryLightColor,
        body: Builder(
            builder: (context) => Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
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
                              Positioned(
                                right: -16,
                                bottom: 0,
                                child: SizedBox(
                                  height: 46,
                                  width: 46,
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: BorderSide(color: kPrimaryColor),
                                    ),
                                    color: Colors.white,
                                    onPressed: () {
                                      getImage();
                                    },
                                    child: SvgPicture.asset(
                                        "assets/icons/photo-camera.svg",
                                        color: kPrimaryLightColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                )));
  }
}
