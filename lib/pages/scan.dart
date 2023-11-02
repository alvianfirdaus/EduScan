import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/bottom_appbar.dart';
import 'package:myapp/widgets/floating_button_appbar.dart';
import 'package:myapp/widgets/card_widgets.dart';
import 'package:myapp/routes/route.dart';


class ScanState extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<ScanState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButtonBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomApp(),
      body: Stack(
          children: [

            Container(
              width: 800,
              height: 900,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/pexels-photo-by-alex-garcia.png'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            
            Container(
              width: 950,
              height: 800,
              child:Image.asset('assets/images/image-2.png', scale: 1.0),
            ),
                
                Container(
              child: Text(
                'Scan',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              height: 60,
              width: 1500,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white54,
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage('../assets/images/iconly-regular-outline-arrow-left.png'),
                  alignment: Alignment.centerLeft,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              // padding: EdgeInsets.all(15),
              padding: EdgeInsets.only(top: 10, bottom: 8),
              alignment: Alignment.topCenter,
            ),
              ],
            )
            
          );
          
  }
}