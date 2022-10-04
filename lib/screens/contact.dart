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
            // a date picker that has today's date as the default
            Row(
              children: <Widget>[
                const Text('Desde'),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('25-05-2022',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )),
                      IconButton(
                        icon: const Icon(Icons.calendar_today,
                            color: Colors.lightBlue),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar solicitud de contacto'),
              // width
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(1000, 36),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                primary: Colors.orange,
                onPrimary: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
