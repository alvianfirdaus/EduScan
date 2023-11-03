import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/widgets/cekrik.dart';
import 'package:myapp/widgets/bottom_appbar.dart';

class ScanState extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<ScanState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CekrikButtonBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomApp(),
        body: Stack(
          children: [
            Container(
              width: 800,
              height: 900,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/pexels-photo-by-alex-garcia.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 950,
              height: 800,
              child: Image.asset('assets/images/image-2.png', scale: 1.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                    context, Routes.riwayat); // Navigasi ke halaman "Sign In"
              },
              child: Container(
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
                    image: AssetImage(
                        'assets/images/iconly-regular-outline-arrow-left.png'),
                    alignment: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.only(top: 10, bottom: 8),
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
