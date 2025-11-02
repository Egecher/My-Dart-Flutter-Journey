import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final TextEditingController _boyController = TextEditingController();

  final TextEditingController _kiloController = TextEditingController();

  double _sonuc = 0;
  String _durum = "";
  Color _renk = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vücut Kitle Endeksi"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Durumunuz: $_durum",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: _renk),
            ),
            SizedBox(height: 16),
             Text(
              "Vücut Kitle Endeksiniz: ${_sonuc.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _boyController,
              decoration: InputDecoration(
                label: Text("Boyunuz"),
                suffixText: "m",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _kiloController,
              decoration: InputDecoration(
                label: Text("Kilonuz"),
                suffixText: "kg",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              onPressed: _hesapla,
              child: Text(
                "Hesapla",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _hesapla() {
    String boyText = _boyController.text.trim();
    String kiloText = _kiloController.text.trim();

    try {
      double boy = double.parse(boyText);
      double kilo = double.parse(kiloText);

      setState(() {
        _sonuc = kilo / (boy * boy);

        if (_sonuc < 18.5) {
          _durum = "Zayıf";
          _renk = Colors.blue;
        } else if (_sonuc >= 18.5 && _sonuc < 24.9) {
          _durum = "Normal Kilolu";
          _renk = Colors.green;
        } else if (_sonuc >= 25 && _sonuc < 29.9) {
          _durum = "Fazla Kilolu";
          _renk = Colors.orange;
        } else if (_sonuc >= 30 && _sonuc < 34.9) {
          _durum = "Obez (1. Derece)";
          _renk = Colors.red;
        } else if (_sonuc >= 35 && _sonuc <39.9) {
          _durum = "Obez (2. Derece)";
          _renk = Colors.red.shade700;
        } else {
          _durum = "Aşırı Obez (3. Derece)";
          _renk = Colors.red.shade900;
        }
      });

    } catch (e) {
      // ignore: avoid_print
      print("Bir hata oluştu: ${e.toString()}");
    }
  }
}