import 'package:flutter/material.dart';
import 'package:tarango/widgets/bottombar.dart';
import 'package:tarango/widgets/recibosWidget.dart';

class Recibos extends StatelessWidget {
  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recibos',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recibos', style: TextStyle(color: verde)),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                      child: Text(
                        'Aquí aparecera el historial de todos tus recibos a lo largo del año',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Container(
                        width: double.infinity,
                        height: 580,
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 2,
                          ),
                          // scrollDirection: Axis.vertical,
                          children: [
                            recibosWidget(
                              precio: '239',
                              pagado: true,
                              fecha: 'Enero - 2021',
                            ),
                            recibosWidget(
                              precio: '130',
                              pagado: true,
                              fecha: 'Febrero - 2021',
                            ),
                            recibosWidget(
                              precio: '119',
                              pagado: true,
                              fecha: 'Marzo - 2021',
                            ),
                            recibosWidget(
                              precio: '328',
                              pagado: false,
                              fecha: 'Abril - 2021',
                            ),
                            recibosWidget(
                              precio: '395',
                              pagado: false,
                              fecha: 'Mayo - 2021',
                            ),
                            recibosWidget(
                              precio: '58',
                              pagado: true,
                              fecha: 'Junio - 2021',
                            ),
                            recibosWidget(
                              precio: '67',
                              pagado: true,
                              fecha: 'Julio - 2021',
                            ),
                            recibosWidget(
                              precio: '573',
                              pagado: false,
                              fecha: 'Agosto - 2021',
                            ),
                            recibosWidget(
                              precio: '430',
                              pagado: true,
                              fecha: 'Septiembre - 2021',
                            ),
                            recibosWidget(
                              precio: '220',
                              pagado: true,
                              fecha: 'Octubre - 2021',
                            ),
                            recibosWidget(
                              precio: '258',
                              pagado: true,
                              fecha: 'Noviembre - 2021',
                            ),
                            recibosWidget(
                              precio: '640',
                              pagado: false,
                              fecha: 'Diciembre - 2021',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottombar(
                contexto: context,
                active: 'recibos',
              )
            ],
          ),
        ),
      ),
    );
  }
}
