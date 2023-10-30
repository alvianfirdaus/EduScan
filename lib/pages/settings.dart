import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settingsP68 (156:112)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupgcqyWAk (WHGX3p7i8GaS6pgtBgCQY)
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 25 * fem, 20 * fem, 460 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autolayouthorizontalcUg (156:236)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 15 * fem, 0 * fem, 1 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // iconlyregularoutlinearrowleft8 (156:237)
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 15 * fem, 50 * fem, 10 * fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      50), // Ubah nilai left sesuai dengan kebutuhan Anda
                              child: Container(
                                width: 28 * fem,
                                height: 28 * fem,
                                child: Image.asset(
                                  'assets/naresh/images/iconly-regular-outline-arrow-left-YCp.png',
                                  width: 28 * fem,
                                  height: 28 * fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // pengaturanQQY (156:241)
                          'Pengaturan',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Urbanist',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.6 * ffem / fem,
                            color: Color(0xff4a4a4a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group1L3J (250:91)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 0 * fem, 9 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // mdiaboutcircleoutlineDMz (159:208)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 20 * fem, 0 * fem),
                              width: 20 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/naresh/images/mdi-about-circle-outline.png',
                                width: 20 * fem,
                                height: 20 * fem,
                              ),
                            ),
                            Text(
                              // tentangkamiKR2 (159:207)
                              'Tentang Kami',
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6000000636 * ffem / fem,
                                color: Color(0xff4a4a4a),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group2eCQ (250:92)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 0 * fem, 10 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ggprofile8NU (187:316)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 21 * fem, 0 * fem),
                              width: 22 * fem,
                              height: 22 * fem,
                              child: Image.asset(
                                'assets/naresh/images/gg-profile.png',
                                width: 22 * fem,
                                height: 22 * fem,
                              ),
                            ),
                            Text(
                              // profileFT6 (159:212)
                              'Profile',
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6000000636 * ffem / fem,
                                color: Color(0xff4a4a4a),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group3z9n (250:93)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // humbleiconslogoutJgG (187:320)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 21 * fem, 0 * fem),
                          width: 17 * fem,
                          height: 16 * fem,
                          child: Image.asset(
                            'assets/naresh/images/humbleicons-logout.png',
                            width: 17 * fem,
                            height: 16 * fem,
                          ),
                        ),
                        Text(
                          // keluarQDW (159:215)
                          'Keluar',
                          style: SafeGoogleFont(
                            'Urbanist',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.6000000636 * ffem / fem,
                            color: Color(0xff4a4a4a),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupbyqnjWg (WHGGiteuCTAP6Ea6bbYqn)
              width: double.infinity,
              height: 82 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle2H2Q (156:113)
                    left: 0 * fem,
                    top: 9 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 73 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff03a1fe),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // menulistPLL (156:114)
                    left: 46 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 277 * fem,
                      height: 70 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // menu4Jy6 (156:115)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 64 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // liclockdEg (156:116)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 20 * fem, 0 * fem, 7 * fem),
                                  width: 22 * fem,
                                  height: 22 * fem,
                                  child: Image.asset(
                                    'assets/naresh/images/li-clock-Zvg.png',
                                    width: 22 * fem,
                                    height: 22 * fem,
                                  ),
                                ),
                                Text(
                                  // riwayatYMe (156:117)
                                  'Riwayat',
                                  style: SafeGoogleFont(
                                    'Urbanist',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3333333333 * ffem / fem,
                                    color: Color(0xffededed),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // menu3tRW (156:158)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 55 * fem, 18 * fem),
                            width: 52 * fem,
                            height: 52 * fem,
                            child: Image.asset(
                              'assets/naresh/images/menu-3-rNk.png',
                              width: 52 * fem,
                              height: 52 * fem,
                            ),
                          ),
                          Container(
                            // menu1zzL (156:118)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 2 * fem, 0 * fem, 0 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // uilsettingLYQ (156:119)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 20 * fem, 0.64 * fem, 8 * fem),
                                  width: 19.65 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/naresh/images/uil-setting-LRN.png',
                                    width: 19.65 * fem,
                                    height: 20 * fem,
                                  ),
                                ),
                                Text(
                                  // pengaturan4DW (156:121)
                                  'Pengaturan',
                                  style: SafeGoogleFont(
                                    'Urbanist',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3333333333 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
