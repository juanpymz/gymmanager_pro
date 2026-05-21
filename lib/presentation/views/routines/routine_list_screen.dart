import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class RoutineListScreen extends StatelessWidget {
  const RoutineListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rutinas')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Listado de rutinas - placeholder')),
    );
  }
}
