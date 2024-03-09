// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tugastpm1_123190080_simpleapp/views/MathAppOne.dart';
import 'package:tugastpm1_123190080_simpleapp/views/MathAppTwo.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Menu Utama'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                color: Colors.greenAccent,
                //height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  Container(
                      color: Colors.greenAccent,
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome to Menu Utama",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nama : Hazlan Muhammad Qodri",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "Nama : NIM: 123190080",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "Nama : Kelas: TPM IF-C",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "Dosen Pengampu : Bagus Muhammad Akbar, S.ST., M.Kom.",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      )),
                  Container(
                    color: Colors.white,
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Pilih Menu",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Menu Penjumlahan dan Pengurangan",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MathAppOne();
                              }),
                            );
                          },
                          child: Text("+ and -"),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Menu Ganjil Genap",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MathAppTwo();
                              }),
                            );
                          },
                          child: Text("odd and even"),
                        ),
                      ],
                    ),
                  ),
                ]))),
      ),
    );
  }
}
