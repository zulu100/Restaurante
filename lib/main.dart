import 'package:flutter/material.dart';
import 'package:proyecto_zulu/vistas/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 30, 44, 2),
          body: WelcomePage(),
        ));
  }
}
