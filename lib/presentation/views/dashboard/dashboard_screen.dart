import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            Card(child: Center(child: Text('Usuarios'))),
            Card(child: Center(child: Text('Membresías'))),
            Card(child: Center(child: Text('Pagos'))),
            Card(child: Center(child: Text('Asistencias'))),
          ],
        ),
      ),
    );
  }
}
