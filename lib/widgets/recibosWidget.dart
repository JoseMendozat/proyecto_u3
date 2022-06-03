import 'package:flutter/material.dart';

class recibosWidget extends StatelessWidget {
  recibosWidget({@required this.precio, @required this.pagado, @required this.fecha});

  final precio;
  final pagado;
  final fecha;

  Color verde = Color(0xFF47b518);

  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$$precio',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              (pagado ? 'PAGADO' : 'PENDIENTE'),
              style: TextStyle(
                color: (pagado ? verde : Colors.red),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('$fecha'),
          ],
        ),
      ),
    );
  }
}
