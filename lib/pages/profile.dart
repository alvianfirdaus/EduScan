import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
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
              child: Text(
                'Profil',
                style: TextStyle(
                  fontSize: 25,
                  
                ),
              ),
            ),

            // Profil picture
            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.only(top: 50, bottom: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('../assets/images/gg-profil.png'),
                ),
                ),
              ),

            // Profil name
            Container(
              padding: EdgeInsets.only(top: 35, bottom: 8),
              alignment: Alignment.centerLeft,
                child: Text(
                  'Nama Lengka',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              alignment: Alignment.centerLeft,
                child: Text(
                  'Alvian Nur Firdaus',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
            ),

            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          
          // Alamat email
            Container(
              padding: EdgeInsets.only(top: 35, bottom: 8),
              alignment: Alignment.centerLeft,
                child: Text(
                  'Alamat Email',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              alignment: Alignment.centerLeft,
                child: Text(
                  'alviannurpratista@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
            ),

            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}