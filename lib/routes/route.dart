import 'package:myapp/pages/page_sign_up.dart';
import 'package:myapp/pages/page_sign_in.dart';
import 'package:flutter/material.dart';
import '../pages/settings.dart';
import '../pages/riwayatmodal.dart';
import '../pages/history.dart';
import '../pages/detail_ktp.dart';
import '../pages/splashscreen.dart';

class Routes {
  static const String splash = '/';
  static const String riwayat = '/riwayat';
  static const String detail_riwayat= '/riwayat/detail';
  static const String scan = '/scan';
  static const String detail_scan = '/scan/detail';
  static const String signIn = '/sign_in';
  static const String signUp = '/sign_up';
  static const String setting = '/setting';
  

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => Splash(),
    signUp: (context) => pageSignUp(),
    signIn: (context) => pageSignIn(),
    riwayat: (context) => Riwayat(),
    detail_riwayat: (context) => DetailRiwayat(),
    //scan: (context) => Splash(),
    //detail_scan: (context) => Splash(),
    setting: (context) => Settings(),

    //appNavigationScreen: (context) => AppNavigationScreen()
  };
}