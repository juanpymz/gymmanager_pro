import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

/// Users list screen placeholder with table-like layout.
class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Usuarios')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.search),
                title: const Text('Buscar usuarios'),
                trailing: ElevatedButton(onPressed: () {}, child: const Text('Nuevo')),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text('Usuario #$index'),
                    subtitle: const Text('email@placeholder.com'),
                    trailing: IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
