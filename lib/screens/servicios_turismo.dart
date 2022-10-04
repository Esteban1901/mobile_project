import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_project/screens/certamen.dart';

class turismoService extends StatelessWidget {
  const turismoService({this.titulo, this.icono, this.precio});

  final String titulo;
  final IconData icono;
  final String precio;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // a box with padding around it
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icono,
                    color: Colors.purple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            titulo,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Text("\$" + precio,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class turismo extends StatelessWidget {
  const turismo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            turismoService(
                titulo: 'Alto del Carmen',
                precio: '60.900 Pesos',
                icono: Icons.airplanemode_active),
            turismoService(
                titulo: 'Vallenar',
                precio: '35.000 Pesos',
                icono: Icons.airplanemode_active),
            turismoService(
                titulo: 'Diego de Almagro',
                precio: '55.900 Pesos',
                icono: Icons.airplanemode_active),
            turismoService(
                titulo: 'Copiapó',
                precio: '40.990 Pesos',
                icono: Icons.airplanemode_active),
          ],
        )
      ],
    );
  }
}
