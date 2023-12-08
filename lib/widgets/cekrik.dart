import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';

class CekrikButtonBar extends StatelessWidget {
  final VoidCallback onPressed;

  const CekrikButtonBar({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.camera_outlined),
    );
  }
}
