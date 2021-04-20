import 'package:flutter/material.dart';
import 'package:refineapp/shared/constants.dart';

class Avatar extends StatelessWidget {
  final String avatarUrl;
  final Function onTap;

  const Avatar({this.avatarUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: avatarUrl == null
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
                backgroundImage: NetworkImage(avatarUrl),
              ),
      ),
    );
  }
}
