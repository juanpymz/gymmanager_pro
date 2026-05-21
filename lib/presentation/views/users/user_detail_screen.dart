import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

/// Detailed user profile screen (placeholder). Shows profile summary and actions.
class UserDetailScreen extends StatelessWidget {
  final String userId;

  const UserDetailScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle de Usuario')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: $userId', style: Theme.of(context).textTheme.caption),
            const SizedBox(height: 8),
            const CircleAvatar(radius: 36, child: Icon(Icons.person)),
            const SizedBox(height: 12),
            const Text('Nombre: Usuario Placeholder'),
            const SizedBox(height: 6),
            const Text('Email: user@placeholder.com'),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('Editar')),
            const SizedBox(height: 8),
            ElevatedButton(onPressed: () {}, child: const Text('Dar de baja (lógica)')), 
          ],
        ),
      ),
    );
  }
}
