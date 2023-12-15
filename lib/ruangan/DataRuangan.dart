import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/ruangan/RuanganForm.dart';
import 'package:maulwidget/bottomnav.dart';

class DataRuangan extends StatefulWidget {
  const DataRuangan({super.key});

  @override
  State<DataRuangan> createState() => _DataRuanganState();
}

class _DataRuanganState extends State<DataRuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Data Ruangan',
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
            // Navigasi ke halaman RuanganForm
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RuanganForm(),
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
              title: Text('Kode Ruangan: RL111'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Ruangan: Lab Komputer'),
                  Text('Kapasitas: 20 orang'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode Ruangan: RL222'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Ruangan: Lab Fisika'),
                  Text('Kapasitas: 30 orang'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode Ruangan: RL333'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Ruangan: Lab Bahasa'),
                  Text('Kapasitas: 40 orang'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}