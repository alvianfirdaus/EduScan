import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';
import 'package:myapp/widgets/bottom_appbar.dart';


class ScanState extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<ScanState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan'),
      ),
      body: Center(
          child: Container(
            child: Stack(
              children: [
                Container(
                  width: 1000,
                  height: 1000,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child:Image.asset('assets/images/pexels-photo-by-alex-garcia.png', fit: BoxFit.cover),
                ),
                Container(
                  width: 950,
                  height: 900,
                  child:Image.asset('assets/images/image-2.png', scale: 1.0),
                ),
              ],
            )
          )
      ),
    );
  }
}