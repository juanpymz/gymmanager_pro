import 'package:flutter/material.dart';

/// Form to create or edit a membership plan (placeholder).
class MembershipForm extends StatefulWidget {
  const MembershipForm({Key? key}) : super(key: key);

  @override
  State<MembershipForm> createState() => _MembershipFormState();
}

class _MembershipFormState extends State<MembershipForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _durationCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _priceCtrl.dispose();
    _durationCtrl.dispose();
    super.dispose();
  }

  void _save() {
    if (_formKey.currentState?.validate() ?? false) {
      // Placeholder: call usecase/repository
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Membresía')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(controller: _nameCtrl, decoration: const InputDecoration(labelText: 'Nombre'), validator: (v) => v==null||v.isEmpty?'Requerido':null),
            TextFormField(controller: _priceCtrl, decoration: const InputDecoration(labelText: 'Precio'), keyboardType: TextInputType.number),
            TextFormField(controller: _durationCtrl, decoration: const InputDecoration(labelText: 'Duración (días)'), keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: _save, child: const Text('Guardar'))
          ]),
        ),
      ),
    );
  }
}
