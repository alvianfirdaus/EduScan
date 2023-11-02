

import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/widgets/bottom_appbar.dart';
import 'package:myapp/widgets/floating_button_appbar.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: buildSettingsList(),
      bottomNavigationBar: BottomApp(),
      floatingActionButton:
          FloatingButtonBar(), // Tambahkan FloatingButtonBar di sini
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Tempatkan FloatingButton di tengah
    );
  }

  Widget buildSettingsList() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        buildSettingItem(
          'Tentang Kami',
          'assets/images/mdi-about-circle-outline.png',
          '/about_us'
        ),
        buildSettingItem(
          'Profile',
          'assets/images/gg-profile.png',                                                                     
          '/profile'
        ),
        buildSettingItem(
          'Keluar',
          'assets/images/humbleicons-logout.png',
          '/logout'
        ),
      ],
    );
  }

  Widget buildSettingItem(String title, String iconAsset, String route) {
    return ListTile(
      leading: Image.asset(
        iconAsset,
        width: 20,
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Urbanist',
          color: Colors.black,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
