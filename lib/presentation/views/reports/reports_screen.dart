import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reportes')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Card(child: ListTile(title: Text('Reporte de ingresos'))),
            SizedBox(height: 8),
            Card(child: ListTile(title: Text('Reporte de asistencias'))),
          ],
        ),
      ),
    );
  }
}
