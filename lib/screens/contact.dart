import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                fontSize: 14.0,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Edad',
              ),
              style: const TextStyle(
                fontSize: 14.0,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Deseo recibir info desde'),
            // a date selector
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Fecha',
                    ),
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                minimumSize: const Size(1000, 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
