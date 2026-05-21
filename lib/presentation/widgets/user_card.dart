import 'package:flutter/material.dart';

/// Compact card widget to display a user in lists.
class UserCard extends StatelessWidget {
  final String id;
  final String name;
  final String email;

  const UserCard({Key? key, required this.id, required this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(name),
        subtitle: Text(email),
        trailing: IconButton(icon: const Icon(Icons.chevron_right), onPressed: () => Navigator.pushNamed(context, '/users')),
      ),
    );
  }
}
