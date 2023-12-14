import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/providers/scan_provider.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/widgets/cekrik.dart';
import 'package:myapp/widgets/bottom_appbar.dart';

class ScanState extends ConsumerStatefulWidget {
  @override
  ConsumerState<ScanState> createState() => _ScanState();
}

class _ScanState extends ConsumerState<ScanState> {
  List<CameraDescription> cameras = [];
  File? capturedImage;

  CameraController? cameraController;

  Future<void> initializeAndDisplayCamera() async {
    try {
      // Mengambil daftar kamera yang tersedia
      cameras = await availableCameras();

      cameraController = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );

      // Menginisialisasi controller dan menunggu inisialisasi selesai
      await cameraController!.initialize();
    } catch (e) {
      print("Kesalahan saat mengakses kamera: $e");
      // Lakukan tindakan yang sesuai jika terjadi kesalahan
      rethrow;
    }
  }

  void onTakePicture() async {
    try {
      if (cameraController != null && cameraController!.value.isInitialized) {
        XFile xFile = await cameraController!.takePicture();
        final notifier = ref.read(scanProvider.notifier);
        capturedImage = File(xFile.path);

        notifier.updateCapturedImage(capturedImage!);

        print('sukses: $capturedImage');
        Navigator.pushNamed(context, Routes.detail_scan,
            arguments: capturedImage);

        setState(() {});
      }
    } catch (e) {
      print("Kesalahan saat mengambil gambar: $e");
      // Lakukan tindakan yang sesuai jika terjadi kesalahan
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

      initializeAndDisplayCamera();
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
        floatingActionButton: CekrikButtonBar(
          onPressed: () {
            onTakePicture();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomApp(),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: FutureBuilder(
                future: initializeAndDisplayCamera(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CameraPreview(cameraController!);
                  } else if (snapshot.hasError) {
                    return Text("Kesalahan: ${snapshot.error}");
                  } else {
                    print(snapshot);
                    return Center(child: CircularProgressIndicator());
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
