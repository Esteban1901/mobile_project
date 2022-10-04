import 'package:flutter/material.dart';

class turismoService extends StatelessWidget {
  const turismoService({this.title, this.precio, this.icon, this.image});

  final String title;
  final String precio;
  final IconData icon;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    color: Colors.purple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
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
                title: 'Alto del Carmen',
                precio: '60.900 Pesos',
                icon: Icons.airplanemode_active),
            turismoService(
                title: 'Vallenar',
                precio: '35.000 Pesos',
                icon: Icons.airplanemode_active),
            turismoService(
                title: 'Diego de Almagro',
                precio: '55.900 Pesos',
                icon: Icons.airplanemode_active),
            turismoService(
                title: 'Copiapó',
                precio: '40.990 Pesos',
                icon: Icons.airplanemode_active),
          ],
        )
      ],
    );
  }
}
