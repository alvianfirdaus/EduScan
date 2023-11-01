import 'package:flutter/material.dart';
import 'package:myapp/models/item.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/bottom_navbar.dart';

class DetailKtp extends StatelessWidget {
  final Item item;

  const DetailKtp({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hasil Scan',
          style: SafeGoogleFont(
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffffffff),
          ),
        ),
        backgroundColor: Color(0xff03a1fe),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Tambahkan widget Positioned dan Align untuk gambar hasil scan
            Positioned(
              left: 0, // Ubah sesuai dengan kebutuhan Anda
              top: 100, // Ubah sesuai dengan kebutuhan Anda
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 360, // Ubah sesuai dengan kebutuhan Anda
                  height: 229, // Ubah sesuai dengan kebutuhan Anda
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                    child: Image.asset('assets/images/ktp7-1-7Hr.png'),
                  ),
                ),
              ),
            ),
            // Tambahkan Container di sini
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
              width: double.infinity,
              height: 0.5,
              decoration: const BoxDecoration(
                color: Color(0xff4a4a4a),
              ),
            ),
            // Tambahkan kolom untuk detail hasil scan
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text(
                    'NIK',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.nik,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Nama',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.nama,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Tempat, Tanggal Lahir',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.ttl,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Jenis Kelamin',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.jenisKelamin,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Golongan Darah',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.golDarah,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Alamat',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.alamat,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Agama',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.agama,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Status Perkawinan',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.kawin,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Pekerjaan',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.pekerjaan,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Kewarganegaraan',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.kewarganegaraan,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Berlaku Hingga',
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4a4a4a),
                    ),
                  ),
                  subtitle: Text(
                    item.berlaku,
                    style: SafeGoogleFont(
                      'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // Tambahkan navigation bar di bagian bawah
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
