import 'package:flutter/material.dart';

class certamen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.rocket_launch),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('C1 DAM020-2022-2'),
                    Text('Eduardo Maturana', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
              ]),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, size: 20.0),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
