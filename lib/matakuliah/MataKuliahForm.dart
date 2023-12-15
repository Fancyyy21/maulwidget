import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/matakuliah/MataKuliahDetail.dart';

class MataKuliahForm extends StatefulWidget {
  const MataKuliahForm({super.key});

  @override
  State<MataKuliahForm> createState() => _MataKuliahFormState();
}

class _MataKuliahFormState extends State<MataKuliahForm> {
  final _KodeMataKuliahTextboxController = TextEditingController();
  final _NamaMataKuliahTextboxController = TextEditingController();
  final _SKSTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Data MataKuliah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxKodeMataKuliah(),
            const SizedBox(height: 16.0),
            _textboxNamaMataKuliah(),
            const SizedBox(height: 16.0),
            _textboxSKS(),
            const SizedBox(height: 24.0),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeMataKuliah() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Kode MataKuliah",
        border: OutlineInputBorder(),
      ),
      controller: _KodeMataKuliahTextboxController,
    );
  }

  _textboxNamaMataKuliah() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama MataKuliah",
        border: OutlineInputBorder(),
      ),
      controller: _NamaMataKuliahTextboxController,
    );
  }

  _textboxSKS() {
    return TextField(
      decoration: InputDecoration(
        labelText: "SKS",
        border: OutlineInputBorder(),
      ),
      controller: _SKSTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String KodeMataKuliah = _KodeMataKuliahTextboxController.text;
        String NamaMataKuliah = _NamaMataKuliahTextboxController.text;
        String SKS = _SKSTextboxController.text;
        //pindah ke halaman Produk Detail dan mengirim data
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MataKuliahDetail(
            KodeMataKuliah: KodeMataKuliah,
            NamaMataKuliah: NamaMataKuliah,
            SKS: SKS,
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