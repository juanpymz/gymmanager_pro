import 'package:flutter/material.dart';

class InvoiceCard extends StatelessWidget {
  final String invoiceId;
  final String userName;
  final double amount;

  const InvoiceCard({Key? key, required this.invoiceId, required this.userName, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Factura #$invoiceId', style: Theme.of(context).textTheme.subtitle1),
            const SizedBox(height: 8),
            Text('Usuario: $userName'),
            const SizedBox(height: 8),
            Text('Total: \$${0.0.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
