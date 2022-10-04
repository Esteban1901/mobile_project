import 'package:flutter/material.dart';

class contacto extends StatelessWidget {
  const contacto();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              style: const TextStyle(
                fontSize: 17.0,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Edad',
              ),
              style: const TextStyle(
                fontSize: 17.0,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Fecha',
                    ),
                    style: const TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar Datos'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                fixedSize: const Size(300, 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
