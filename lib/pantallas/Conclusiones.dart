import 'package:flutter/material.dart';
import 'package:tarango/widgets/bottombar.dart';

class Conclusiones extends StatelessWidget {
  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conclusiones',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conclusion', style: TextStyle(color: verde)),
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                    child: Text(
                      'Conclusion final del proyecto',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Text(
                      'En el transcurso del desarrollo de este proyecto de aplicacion en flutter, aprendi a poder organizar e identificar la estructura del codigo de dart y a crear widgets para mi aplicacion, asi como tambien usar widgets para el mejor funcionamiento o visualizacion de mi aplicacion, como lo pueden ser, Containers, SizedBox, ListTile, TabBar, GridView, Center, etc.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              bottombar(contexto: context, active: 'conclusiones')
            ],
          ),
        ),
      ),
    );
  }
}
