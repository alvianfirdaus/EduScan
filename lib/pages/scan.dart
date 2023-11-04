import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/widgets/cekrik.dart';
import 'package:myapp/widgets/bottom_appbar.dart';

class ScanState extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<ScanState> {
  List<CameraDescription> cameras = [];

  Future<Widget> initializeAndDisplayCamera() async {
    try {
      // Menginisialisasi CameraController
      final cameraController = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );

      // Menginisialisasi controller dan menunggu inisialisasi selesai
      await cameraController.initialize();

      // Menampilkan kamera
      return CameraPreview(cameraController);
    } catch (e) {
      print("Kesalahan saat mengakses kamera: $e");
      // Lakukan tindakan yang sesuai jika terjadi kesalahan
      return Text("Tidak dapat mengakses kamera: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    // Inisialisasi kamera
    availableCameras().then((value) {
      setState(() {
        cameras = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Scan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Color(0xff03a1fe),
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: CekrikButtonBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomApp(),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: cameras.isEmpty
                  ? Container(
                      color: Color(1),
                    )
                  : FutureBuilder<Widget>(
                      future: initializeAndDisplayCamera(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return snapshot.data ??
                              Container(color: Colors.green);
                        } else if (snapshot.hasError) {
                          return Text("Kesalahan: ${snapshot.error}");
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: AspectRatio(
                          aspectRatio: (1.56 / 1),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      )
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
