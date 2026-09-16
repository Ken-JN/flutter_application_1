import 'package:flutter/material.dart';

class KalkulatorPageJadi extends StatefulWidget {
  const KalkulatorPageJadi({super.key});

  @override
  State<KalkulatorPageJadi> createState() => _KalkulatorPageJadiState();
}

class _KalkulatorPageJadiState extends State<KalkulatorPageJadi> {
  
  final TextEditingController controllerAngka1 = TextEditingController();
  final TextEditingController controllerAngka2 = TextEditingController();

  
  String hasil = '0';

 
  void hitung(String operasi) {
    double angka1 = double.tryParse(controllerAngka1.text) ?? 0;
    double angka2 = double.tryParse(controllerAngka2.text) ?? 0;

    setState(() {
      if (operasi == '+') {hasil = '${angka1 + angka2}';
      } else if (operasi == '-') {hasil = '${angka1 - angka2}';
      } else if (operasi == 'x') {hasil = '${angka1 * angka2}';
      } else if (operasi == '/') {
        if (angka2 != 0) {
          hasil = '${angka1 / angka2}';
        } else {
          hasil = 'Error';
        }
      }
    });
  }


  void reset() {
    setState(() {
      controllerAngka1.clear();
      controllerAngka2.clear();
      hasil = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controllerAngka1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(hintText: "Angka 1"),
                  ),
                ),

                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: controllerAngka2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(hintText: "Angka 2"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => hitung('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => hitung('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => hitung('x'),
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () => hitung('/'),
                  child: const Text('/'),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Text(
              "Hasil: $hasil",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),

              onPressed: reset,
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.white),

              ),
            ),
          ],
        ),
      ),
    );
  }
}