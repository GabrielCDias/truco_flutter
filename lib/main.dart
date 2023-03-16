import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage fundo = AssetImage('images/baralho.jpg');

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fundo,
          fit: BoxFit.cover,
        ),
      ),
      child: MaterialApp(
        title: 'Contador de Truco',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home(),
      ),
    );
  }
}
