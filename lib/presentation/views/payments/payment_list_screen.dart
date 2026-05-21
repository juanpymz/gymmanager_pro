import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class PaymentListScreen extends StatelessWidget {
  const PaymentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagos')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Listado de pagos - placeholder')),
    );
  }
}
