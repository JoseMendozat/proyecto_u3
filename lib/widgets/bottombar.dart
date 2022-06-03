import 'package:flutter/material.dart';

class bottombar extends StatelessWidget {
  bottombar({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  Color verde = Color(0xFF47b518);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/inicio');
                  },
                  icon: Icon(Icons.home, color: active == 'inicio' ? verde : Colors.grey[600]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/recibos');
                  },
                  icon: Icon(Icons.text_snippet, color: active == 'recibos' ? verde : Colors.grey[600]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/clientes');
                  },
                  icon: Icon(Icons.account_circle, color: active == 'clientes' ? verde : Colors.grey[600]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/empleados');
                  },
                  icon: Icon(Icons.cases_rounded, color: active == 'empleados' ? verde : Colors.grey[600]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/conclusiones');
                  },
                  icon: Icon(Icons.textsms, color: active == 'conclusiones' ? verde : Colors.grey[600]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/desarrollador');
                  },
                  icon: Icon(Icons.manage_accounts, color: active == 'desarrollador' ? verde : Colors.grey[600]),
                ),
              ],
            ),
          )),
    );
  }
}
