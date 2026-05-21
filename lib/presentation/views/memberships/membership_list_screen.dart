import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class MembershipListScreen extends StatelessWidget {
  const MembershipListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Membresías')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Listado de membresías - placeholder')),
    );
  }
}
