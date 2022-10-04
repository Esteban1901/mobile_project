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
                title: 'Bahía Inglesa',
                price: '20.000 CLP',
                icon: Icons.beach_access,
                type: 'Tour'),
            ServiceWidget(
                title: 'Caldera',
                price: '30.000 CLP',
                icon: Icons.tour,
                type: 'Tour'),
            ServiceWidget(
                title: 'Vallenar',
                price: '40.000 CLP',
                icon: Icons.travel_explore,
                type: 'Tour'),
            ServiceWidget(
                title: 'Huasco',
                price: '50.000 CLP',
                icon: Icons.map,
                type: 'Tour'),
            ServiceWidget(
                title: 'Chañaral',
                price: '60.000 CLP',
                icon: Icons.scatter_plot_rounded,
                type: 'Tour'),
          ],
        )
      ],
    );
  }
}
