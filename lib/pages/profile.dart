import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/utils.dart';

import '../widgets/custom_text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
              'assets/images/iconly-regular-outline-arrow-left.png'),
          onPressed: () {
            Navigator.pushNamed(context, Routes.setting);
          },
        ),
        title: Text(
          'Profile',
          style: SafeGoogleFont(
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff4a4a4a),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // Profil picture
            SizedBox(height: 60, width: 1500),
            Image(image: AssetImage('assets/images/healthicons-ui-user-profile-4iL.png')),
            SizedBox(height: 30),

            // Profil name
            Container(
              padding: EdgeInsets.only(top: 35, bottom: 8, left: 13),
              alignment: Alignment.centerLeft,
              child: Text(
                'Nama Lengkap',
                style: SafeGoogleFont(
                  'Urbanist',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4a4a4a),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10, bottom: 15, left: 13),
              alignment: Alignment.centerLeft,
              child: CustomTextStyle(text: 'Alvian Nur Firdaus',),
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
              padding: EdgeInsets.only(top: 35, bottom: 8, left: 13),
              alignment: Alignment.centerLeft,
              child: CustomTextStyle(
                text: 'Alamat Email',
                fontWeight: FontWeight.w600,
                color: Color(0xff4a4a4a),
                ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10, bottom: 15, left: 13),
              alignment: Alignment.centerLeft,
              child: CustomTextStyle(
                text: 'alviannurfirdaus@gmail.com',

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
