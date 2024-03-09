// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tugastpm1_123190080_simpleapp/views/SecondScreen.dart';

void main() {
  runApp(MathAppOne());
}

class MathAppOne extends StatelessWidget {
  MathAppOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Penjumlahan dan Pengurangan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MathPageOne(),
    );
  }
}

class MathPageOne extends StatefulWidget {
  @override
  _MathPageOneState createState() => _MathPageOneState();
}

class _MathPageOneState extends State<MathPageOne> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  int result = 0;

  void _penjumlahan(BuildContext context) {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    setState(() {
      result = num1 + num2;
    });
  }

  void _pengurangan(BuildContext context) {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    setState(() {
      result = num1 - num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return SecondScreen();
              }),
            );
          },
        ),
        title: Text('Menu Penjumlahan dan Pengurangan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Pertama',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Kedua',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _penjumlahan(context),
              child: Text('Penjumlahan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _pengurangan(context),
              child: Text('Pengurangan'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hasil: $result',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
