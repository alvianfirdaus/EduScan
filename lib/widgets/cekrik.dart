import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';

class CekrikButtonBar extends StatelessWidget {
  const CekrikButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.detail_scan);
      },
      child: Icon(Icons.camera_outlined),
    );
  }
}
