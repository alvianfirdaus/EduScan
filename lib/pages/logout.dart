import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/widgets/custom_text_style.dart';

import '../routes/route.dart';
import '../utils.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset(
              'assets/images/iconly-regular-outline-arrow-left.png'),
          onPressed: () {
            Navigator.pushNamed(context, Routes.setting);
          },
        ),
        title: Text(
          'Konfirmasi Keluar',
          style: SafeGoogleFont(
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextStyle(text: 'Apakah Anda yakin ingin keluar dari aplikasi?'),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                // Keluar dari aplikasi
                SystemNavigator.pop();
              },
              child: CustomTextStyle(text: 'Keluar', color: Colors.white, ),
            ),
          ],
        ),
      ),
    );
  }
}
