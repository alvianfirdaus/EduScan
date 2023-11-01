import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xff03a1fe),
      shape: CircularNotchedRectangle(),
      notchMargin: 5.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon:
                    Icon(Icons.history_outlined, color: Colors.white, size: 27),
                onPressed: () {},
              ),
              Text(
                'Riwayat',
                style: SafeGoogleFont(
                  'urbanist',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white, size: 26),
                onPressed: () {},
              ),
              Text(
                'Pengaturan',
                style: SafeGoogleFont(
                  'urbanist',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
