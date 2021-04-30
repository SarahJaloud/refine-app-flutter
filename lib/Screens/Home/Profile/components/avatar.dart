import 'dart:io';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import 'package:refineapp/shared/constants.dart';

class UserImage extends StatefulWidget {
  @override
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  File _image;
  final picker = ImagePicker();
  //final ImageProvider backgroundImage;

//function to get it from
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  // ignore: unused_element
//   Future<void> _getImage(ImageSource source) async {
//     var image = await ImagePicker.ImagePicker(source: source);
//     if (image != null) {
//       setState(() {
//         _cropImage(image);
//       });
//     }
//     Navigator.pop(context);
//   }

// // Crop fetched image
//   _cropImage(File image) async {
//     File cropped = await ImageCropper.cropImage(
//         sourcePath: image.path,
//         aspectRatio: CropAspectRatio(ratioY: 1.0, ratioX: 1.0));
//     if (cropped != null) {
//       setState(() {
//         _image = cropped;
//         uploadFile();
//       });
//     }
//   }

  // Future uploadFile() async {
  //   StorageReference storageReference = FirebaseStorage.instance
  //       .ref()
  //       .child('${Path.basename(_image.path)}}');
  //   StorageUploadTask uploadTask = storageReference.putFile(_image);
  //   var downUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
  //   var url = downUrl.toString();

  //   await uploadTask.onComplete;
  //   setState(() {
  //     imageUrl = url.toString();
  //   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: getImage,
        child: Center(
          child: _image == null
              ? CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 60.0,
                  child: Icon(
                    Icons.photo_camera,
                    color: kPrimaryLightColor,
                    size: 30,
                  ),
                )
              : CircleAvatar(
                  radius: 60.0,
                  backgroundImage: Image.file(
                    _image,
                    fit: BoxFit.cover,
                  ).image,
                ),
        ));
  }
}
