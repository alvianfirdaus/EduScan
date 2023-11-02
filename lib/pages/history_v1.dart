import 'package:flutter/material.dart';
import 'package:myapp/models/item.dart';
import 'package:myapp/data/data_detail.dart';
import 'package:myapp/utils.dart';
// import 'package:myapp/widgets/bottom_appbar_detail.dart';
import 'package:myapp/widgets/bottom_appbar.dart';
import 'package:myapp/widgets/floating_button_appbar.dart';
import 'package:myapp/widgets/card_widgets.dart';

class HistoryV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
              'assets/images/iconly-regular-outline-arrow-left.png'),
          onPressed: () {
            // Add your navigation logic here (e.g., go back)
          },
        ),
        title: Text(
          'Riwayat',
          style: SafeGoogleFont(
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: CardWidget(items: InitialData.items),
      floatingActionButton:
          FloatingButtonBar(), // ini untuk memanggil widget floating_button_appbar
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // ini juga
      bottomNavigationBar:
          BottomApp(), // ini untuk memanggil widget bottom_appbar
    );
  }
}