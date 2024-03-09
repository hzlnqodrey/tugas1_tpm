// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugastpm1_123190080_simpleapp/views/SecondScreen.dart';

void main() {
  runApp(MathAppTwo());
}

class MathAppTwo extends StatelessWidget {
  MathAppTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Ganjil dan Genap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MathPageTwo(),
    );
  }
}

class MathPageTwo extends StatefulWidget {
  @override
  _MathPageTwoState createState() => _MathPageTwoState();
}

class _MathPageTwoState extends State<MathPageTwo> {
  TextEditingController num1Controller = TextEditingController();

  String result = '';

  void _Cek(BuildContext context) {
    int angka = int.parse(num1Controller.text);
    if (angka % 2 == 0) {
      setState(() {
        result = 'Genap';
      });
    } else {
      setState(() {
        result = 'Ganjil';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
        title: Text('Menu Ganjil dan Genap'),
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
                  labelText: 'Masukkan angka',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _Cek(context);
                },
                child: Text('Cek Genap atau Ganjil'),
              ),
              SizedBox(height: 20),
              Text(
                'Hasil: $result',
                style: TextStyle(fontSize: 20),
              )
            ],
          )),
    ));
  }
}
