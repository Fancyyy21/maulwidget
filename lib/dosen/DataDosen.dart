import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/dosen/DosenForm.dart';
import 'package:maulwidget/bottomnav.dart';

class DataDosen extends StatefulWidget {
  const DataDosen({super.key});

  @override
  State<DataDosen> createState() => _DataDosenState();
}

class _DataDosenState extends State<DataDosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Data Dosen',
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
            // Navigasi ke halaman DosenForm
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DosenForm(),
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
              title: Text('NIDN: 0410118609'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Rolly Maulana Awangga,S.T.,MT.,CAIP, SFPC.'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NIDN: 0423127804'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Roni Habibi, S.Kom., M.T., SFPC'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NIDN: 0420058801'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Roni Andarsyah, S.T., M.Kom., SFPC'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}