import 'package:flutter/material.dart';
import 'package:tarango/widgets/bottombar.dart';

class Inicio extends StatelessWidget {
  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Saldo', style: TextStyle(color: verde)),
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
                        'Saldo actual: Vencido',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        '\$293.00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'Fecha limite de pago:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        '23 / Junio / 2022',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        'Periodo: Abril 2022 - Junio 2022',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'Consumo: 261 kWh',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      child: Image.network('https://github.com/JoseMendozat/imagenes/blob/main/grafico_consumo.jpg?raw=true'),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: verde,
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {},
                        child: Text(
                          'PAGAR',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(double.infinity, 50),
                          side: BorderSide(
                            width: 2.0,
                            color: verde,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'PAGAR EN SUCURSAL',
                          style: TextStyle(
                            color: verde,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottombar(contexto: context, active: 'inicio')
            ],
          ),
        ),
      ),
    );
  }
}
