import 'package:flutter/cupertino.dart';

class turismo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('Turismos'),
        ),
      ),
    );
  }
}
