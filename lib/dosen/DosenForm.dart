import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/dosen/DosenDetail.dart';

class DosenForm extends StatefulWidget {
  const DosenForm({super.key});

  @override
  State<DosenForm> createState() => _DosenFormState();
}

class _DosenFormState extends State<DosenForm> {
  final _NidnTextboxController = TextEditingController();
  final _NamaDosenTextboxController = TextEditingController();
  final _AlamatTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Data Dosen'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNidn(),
            const SizedBox(height: 16.0),
            _textboxNamaDosen(),
            const SizedBox(height: 16.0),
            _textboxAlamat(),
            const SizedBox(height: 24.0),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNidn() {
    return TextField(
      decoration: InputDecoration(
        labelText: "N I D N",
        border: OutlineInputBorder(),
      ),
      controller: _NidnTextboxController,
    );
  }

  _textboxNamaDosen() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama Dosen",
        border: OutlineInputBorder(),
      ),
      controller: _NamaDosenTextboxController,
    );
  }

  _textboxAlamat() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Alamat",
        border: OutlineInputBorder(),
      ),
      controller: _AlamatTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String Nidn = _NidnTextboxController.text;
        String NamaDosen = _NamaDosenTextboxController.text;
        String Alamat = _AlamatTextboxController.text;
        //pindah ke halaman Produk Detail dan mengirim data
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DosenDetail(
            Nidn: Nidn,
            NamaDosen: NamaDosen,
            Alamat: Alamat,
          ),
        ));
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // background color
        onPrimary: Colors.white, // text color
      ),
      child: const Text('Simpan'),
    );
  }
}