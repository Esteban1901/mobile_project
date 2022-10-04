import 'package:flutter/material.dart';
import 'package:mobile_project/screens/contacto.dart';
import 'package:mobile_project/screens/servicios_turismo.dart';

class certamen extends StatefulWidget {
  @override
  _certamenState createState() => _certamenState();
}

class _certamenState extends State<certamen> with TickerProviderStateMixin {
  TabController _tabPages;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _tabPages = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.person),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'C1 DAM020-2022-2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Esteban Reyes', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: TabBarView(
          controller: _tabPages,
          children: [
            contacto(),
            turismo(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
              _tabPages.animateTo(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Contacto',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_active),
              label: 'Turismo',
            ),
          ],
        ),
      ),
    );
  }
}
