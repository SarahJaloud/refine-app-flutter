import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final void Function() onPressed;

  const CustomIconButton({
    Key key,
    @required this.icon,
    this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      padding: const EdgeInsets.all(0),
      splashRadius: 20.0,
      onPressed: onPressed,
    );
  }
}
