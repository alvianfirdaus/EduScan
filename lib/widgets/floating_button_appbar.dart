import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';

class FloatingButtonBar extends StatelessWidget {
  const FloatingButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton( 
      onPressed: () {
        Navigator.pushReplacementNamed(context, Routes.scan);
      },
      child: Icon(Icons.camera_alt_outlined),
    );
  }
}