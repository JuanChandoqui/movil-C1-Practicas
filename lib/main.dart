import 'package:flutter/material.dart';
import 'package:vista_lista_datos/src/Screens/lista_datos_screen.dart';
import 'package:vista_lista_datos/src/Screens/login2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Login2Screen()
      home: ListaDatosScreen()
    );
  }
}