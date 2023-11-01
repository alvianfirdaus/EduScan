import 'package:flutter/material.dart';

class FloatingButtonBar extends StatelessWidget {
  const FloatingButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton( 
      onPressed: () {},
      child: Icon(Icons.camera_alt_outlined),
    );
  }
}