import 'package:flutter/material.dart';
import 'package:myapp/models/item.dart';
import 'package:myapp/data/data_detail.dart';
import 'package:myapp/utils.dart';

class CardWidget extends StatelessWidget {
  // const CardWidget({super.key});
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
          return ItemCard(item: item, context: context);
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;
  final BuildContext context;

  const ItemCard({required this.item, required this.context});

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
          // Tambahkan padding pada keseluruhan Card
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
                        SizedBox(width: 8), // Menambahkan jarak horizontal
                        Text(
                          item.waktusc, // Teks yang ingin Anda tambahkan
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
                    // Tambahkan logika yang ingin Anda jalankan saat ikon panah diklik
                  },
                  child: Image.asset(
                    'assets/images/ep-arrow-up.png', // Gantilah dengan path gambar ikon panah Anda
                    width: 24, // Sesuaikan lebar gambar ikon
                    height: 24,
                    // Sesuaikan tinggi gambar ikon
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
