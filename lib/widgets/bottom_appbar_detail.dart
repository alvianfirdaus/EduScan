import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/routes/route.dart';

class BottomAppDetail extends StatelessWidget {
  final VoidCallback? onSave;
  final VoidCallback? onRetake;

  const BottomAppDetail({
    super.key,
    this.onSave,
    this.onRetake,
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
                icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white, size: 27),
                onPressed: () {
                  onRetake?.call();
                  // Navigator.pushReplacementNamed(context, Routes.scan);
                },
              ),
              Text(
                'Pindai Ulang',
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
                icon: Icon(Icons.save_alt_outlined,
                    color: Colors.white, size: 26),
                onPressed: () {
                  onSave?.call();
                },
              ),
              Text(
                'Simpan',
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
