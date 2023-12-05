import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';
import 'providers/splash_screen/splash_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SplashProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splash, // Rute awal aplikasi
      routes: Routes.routes,
    );
  }
}
