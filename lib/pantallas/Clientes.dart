import 'package:flutter/material.dart';
import 'package:tarango/widgets/bottombar.dart';

class Clientes extends StatelessWidget {
  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clientes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clientes', style: TextStyle(color: verde)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 5,
          leading: Icon(Icons.menu, color: verde),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                      child: Text(
                        'Formulario clientes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Nombre',
                          labelStyle: TextStyle(color: verde),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: verde,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Apellido',
                          labelStyle: TextStyle(color: verde),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: verde,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Edad',
                                labelStyle: TextStyle(color: verde),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: verde,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Codigo Postal',
                                labelStyle: TextStyle(color: verde),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: verde,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Correo Electronico',
                          labelStyle: TextStyle(color: verde),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: verde,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(color: verde),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: verde,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: verde,
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {},
                        child: Text(
                          'GUARDAR REGISTRO',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottombar(contexto: context, active: 'clientes')
            ],
          ),
        ),
      ),
    );
  }
}
