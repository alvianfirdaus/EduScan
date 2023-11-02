import 'package:flutter/material.dart';
// import 'package:myapp/pages/detail_ktp.dart';
import 'package:myapp/data/data_detail.dart'; // Import file data.dart
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:myapp/pages/history_v1.dart';
import 'package:myapp/routes/route.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.splash, // Rute awal aplikasi
      routes: Routes.routes, 
  ));
}
