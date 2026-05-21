import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajustes')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(title: const Text('Cuenta'), subtitle: const Text('Gestionar credenciales')),
            ListTile(title: const Text('Notificaciones'), subtitle: const Text('Configurar notificaciones')),
            ListTile(title: const Text('Integraciones'), subtitle: const Text('Firebase, Analytics')),
          ],
        ),
      ),
    );
  }
}
