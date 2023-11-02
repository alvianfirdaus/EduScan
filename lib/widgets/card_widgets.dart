import 'package:flutter/material.dart';
import 'package:myapp/models/item.dart';
import 'package:myapp/data/data_detail.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/pages/riwayatmodal.dart';

class CardWidget extends StatelessWidget {
  final List<Item> items;

  const CardWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Menampilkan 2 item per baris
          childAspectRatio: 3.7, // Mengatur rasio lebar-tinggi item
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(item: item);
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        color: Color.fromARGB(255, 245, 245, 245),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                left: 10,
                width: 100,
                height: 100,
                child: Image.asset(item.imageUrl),
              ),
              Positioned(
                left: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.nama,
                      style: SafeGoogleFont(
                        'Urbanist',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.5999999728,
                        color: Color(0xff4a4a4a),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          item.tanggalsc,
                          style: SafeGoogleFont(
                            'Urbanist',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff808080),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          item.waktusc,
                          style: SafeGoogleFont(
                            'Urbanist',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff808080),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    _showDetailDialog(context);
                  },
                  child: Image.asset(
                    'assets/images/ep-arrow-up.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDetailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Positioned(
          left: 32 * fem,
          top: 100 * fem,
          child: Align(
            child: SizedBox(
              width: 297 * fem,
              height: 560 * fem,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 *
                                fem), // Tambahkan margin bawah dan margin kanan
                        child:
                            buildInfoRowWithSizedBox('NIK', '3275080803030018'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox('Nama', 'Peter Chen'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Tempat/Tgl Lahir', 'Cellengenge, 25-10-1972'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Tempat/Tgl Lahir', 'Cellengenge, 25-10-1972'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Jenis Kelamin', 'Laki-laki'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox('Gol. Darah', 'O'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Alamat', 'JL. MERDEKA NO.43 RT 001/004'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox('Agama', 'Islam'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Status Perkawinan', 'Kawin'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Pekerjaan', 'Pegawai Negeri Sipil'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child:
                            buildInfoRowWithSizedBox('Kewarganegaraan', 'WNI'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8 * fem), // Tambahkan margin bawah
                        child: buildInfoRowWithSizedBox(
                            'Berlaku Hingga', 'Seumur Hidup'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
