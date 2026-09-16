import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator"),
      centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [ 
              Expanded(child: TextField(decoration: InputDecoration(hintText: "Angka 1"),
                ),
              ),

              SizedBox(width: 10),

              Expanded(child: TextField(decoration: InputDecoration(hintText: "Angka 2"),
                ),
              ),
            ],
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),onPressed: () {},child: Text('+'),
              ),
              SizedBox(width: 20),
              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),onPressed: () {},child: Text('-'),
              ),
              SizedBox(width: 20),
              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),onPressed: () {},child: Text('x'),
              ),
               SizedBox(width: 20),
              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),onPressed: () {},child: Text('/'),
              ),
               SizedBox(width: 20),
            ],
          ),

          SizedBox(height: 30),

          Text("Hasil: 0", 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),

          SizedBox(height: 30),

          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),onPressed: () {},child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
