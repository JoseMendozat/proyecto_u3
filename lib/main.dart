import 'package:flutter/material.dart';
import 'package:tarango/pantallas/Login.dart';
import 'package:tarango/pantallas/Inicio.dart';
import 'package:tarango/pantallas/Clientes.dart';
import 'package:tarango/pantallas/Empleados.dart';
import 'package:tarango/pantallas/Recibos.dart';
import 'package:tarango/pantallas/Conclusiones.dart';
import 'package:tarango/pantallas/Desarrollador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CFE',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => Inicio(),
        '/clientes': (context) => Clientes(),
        '/empleados': (context) => Empleados(),
        '/recibos': (context) => Recibos(),
        '/conclusiones': (context) => Conclusiones(),
        '/desarrollador': (context) => Desarrollador(),
      },
    );
  }
}
