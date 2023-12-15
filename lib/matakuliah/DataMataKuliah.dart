import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/matakuliah/MataKuliahForm.dart';
import 'package:maulwidget/bottomnav.dart';

class DataMataKuliah extends StatefulWidget {
  const DataMataKuliah({super.key});

  @override
  State<DataMataKuliah> createState() => _DataMataKuliahState();
}

class _DataMataKuliahState extends State<DataMataKuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Data MataKuliah',
        style: TextStyle(
          color: Color.fromARGB(255, 151, 15, 15), fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color.fromARGB(0, 225, 38, 13),
      centerTitle: true,
      actions: [
        // Tombol "Tambah Data" di sisi kanan AppBar
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            // Navigasi ke halaman MataKuliahForm
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MataKuliahForm(),
              ),
            );
          },
        ),
      ], // Corrected indentation here
    ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Kode MataKuliah: 44011'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama MataKuliah: Pemrograman'),
                  Text('SKS: 4 SKS'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode MataKuliah: 55022'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama MataKuliah: Lab Fisika'),
                  Text('SKS: 4 SKS'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode MataKuliah: 66033'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama MataKuliah: Lab Bahasa'),
                  Text('SKS: 4 SKS'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}