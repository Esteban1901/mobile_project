import 'package:flutter/material.dart';
import 'package:mobile_project/modelos/modelo_destino.dart';

class widgetDestino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Destinos Populares',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5)),
              GestureDetector(
                onTap: () => print('Ver todos'),
                child: Text(
                  'Ver todos',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              )
            ],
          ),
        ),
        Container(
            height: 300.0,
            color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinos.length,
              itemBuilder: (context, index) {
                Destinos destino = destinos[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0,
                  color: Colors.red,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(destino.descripcion),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
      ],
    );
  }
}
