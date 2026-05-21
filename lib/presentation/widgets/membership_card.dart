import 'package:flutter/material.dart';

class MembershipCard extends StatelessWidget {
  final String id;
  final String name;
  final String price;

  const MembershipCard({Key? key, required this.id, required this.name, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.card_membership),
        title: Text(name),
        subtitle: Text('Precio: $price'),
        trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
      ),
    );
  }
}
