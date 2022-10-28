import 'package:examen_calendari/editar_esdeveniment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'llistat_esdeveniments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //No he metido rutas porque no he podido, y como he movido las clases a otros archivos al iniciar el proyecto no se ve nada.
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        //He intentado hacer un formulario como primera página de la app donde se recoge el nombre de usuario para poder ponerlo en el título, pero no he sido capaz.
        title: "Calendari de User",
      ),
    );
  }
}
