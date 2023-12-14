import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/routes/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (FirebaseAuth.instance.currentUser != null) {
        Navigator.pushNamed(context, Routes.riwayat);
      } else {
        // Menunggu selama 5 detik dan kemudian melakukan navigasi ke halaman "Sign In"
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushNamed(context, Routes.OnboardingContent);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), // Ganti warna latar belakang sesuai kebutuhan
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, Routes.OnboardingContent); // Navigasi ke halaman sign-in
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png',
                  width: 170, height: 170), // Ganti dengan path logo Anda
              SizedBox(height: 16),
              Text(
                'EduScan',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(
                      0xff4a4a4a), // Ganti warna teks sesuai kebutuhan
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
