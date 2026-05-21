import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class AttendanceRegisterScreen extends StatelessWidget {
  const AttendanceRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar Asistencia')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'ID Usuario')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('Registrar')),
          ],
        ),
      ),
    );
  }
}
