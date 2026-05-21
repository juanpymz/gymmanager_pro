import 'package:flutter/material.dart';

/// Analytics panel used in dashboard to display KPIs.
class AnalyticsPanel extends StatelessWidget {
  const AnalyticsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(child: ListTile(title: Text('Ingresos'), subtitle: Text(' 0'))),
        const SizedBox(height: 8),
        Card(child: ListTile(title: Text('Asistencias'), subtitle: Text('0'))),
      ],
    );
  }
}
