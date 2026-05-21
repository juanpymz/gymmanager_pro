import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class AttendanceListScreen extends StatelessWidget {
  const AttendanceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asistencias')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Historial de asistencias - placeholder')),
    );
  }
}
