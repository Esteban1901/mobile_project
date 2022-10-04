import 'package:flutter/material.dart';
import 'package:mobile_project/widgets/service.dart';

class ServicesView extends StatelessWidget {
  const ServicesView();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceWidget(
                title: 'Han Solo',
                price: '999.990',
                icon: Icons.star,
                movie: 'Star Wars'),
            ServiceWidget(
                title: 'Iron Man',
                price: '999.990',
                icon: Icons.star,
                movie: 'Avengers'),
            ServiceWidget(
                title: 'Batman',
                price: '999.990',
                icon: Icons.star,
                movie: 'Batman'),
            ServiceWidget(
                title: 'Superman',
                price: '999.990',
                icon: Icons.star,
                movie: 'Superman'),
            ServiceWidget(
                title: 'Spiderman',
                price: '999.990',
                icon: Icons.star,
                movie: 'Spiderman'),
            ServiceWidget(
                title: 'Thor',
                price: '999.990',
                icon: Icons.star,
                movie: 'Avengers'),
          ],
        )
      ],
    );
  }
}
