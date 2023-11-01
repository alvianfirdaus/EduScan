import 'package:flutter/material.dart';
import 'package:myapp/pages/detail_ktp.dart';
import 'package:myapp/data/data_detail.dart'; // Import file data.dart

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => DetailKtp(item: InitialData.item), // Menggunakan data dari data.dart
    },
  ));
}
