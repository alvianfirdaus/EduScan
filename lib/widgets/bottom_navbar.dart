import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xff03a1fe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined,
                    color: Colors.white, size: 25),
                onPressed: () {
                  // Navigasi ke halaman utama
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Pindai Ulang',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.save_outlined,
                    color: Colors.white, size: 25),
                onPressed: () {
                  // Navigasi ke halaman pengaturan
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
