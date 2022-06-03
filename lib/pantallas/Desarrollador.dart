import 'package:flutter/material.dart';
import 'package:tarango/widgets/bottombar.dart';

class Desarrollador extends StatelessWidget {
  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desarrollador',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Desarrollador', style: TextStyle(color: verde)),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/FB_IMG_1654010675138.jpg?raw=true'),
                            radius: 40,
                          ),
                          Text(
                            'Jose Alberto \nMendoza Tarango',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                leading: Icon(Icons.groups, color: verde),
                                title: Text(
                                  'Grupo',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('6to-J | B', style: TextStyle(fontSize: 16)),
                              ),
                              ListTile(
                                leading: Icon(Icons.code, color: verde),
                                title: Text(
                                  'Especialidad',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('Programación', style: TextStyle(fontSize: 16)),
                              ),
                              ListTile(
                                leading: Icon(Icons.school, color: verde),
                                title: Text(
                                  'Escuela',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('CBTIS 128', style: TextStyle(fontSize: 16)),
                              ),
                              ListTile(
                                leading: Icon(Icons.insert_drive_file, color: verde),
                                title: Text(
                                  'Tema',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('CFE', style: TextStyle(fontSize: 16)),
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                  ],
                ),
                bottombar(contexto: context, active: 'desarrollador')
              ],
            ),
          )),
    );
  }
}
