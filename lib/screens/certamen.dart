import 'package:flutter/material.dart';

import 'package:mobile_project/screens/contact.dart';
import 'package:mobile_project/screens/services.dart';

class Exam extends StatefulWidget {
  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

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
        body: TabBarView(
          controller: _tabController,
          children: [
            ServicesView(),
            ContactView(),
          ],
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: 'Contacto',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Servicios',
            ),
          ],
        ),
      ),
    );
  }
}
