import 'package:flutter/material.dart';
import '../../../helpers/validators.dart';

/// Form to create or edit a user. Placeholder inputs and validation.
class UserForm extends StatefulWidget {
  final String? initialName;
  final String? initialEmail;

  const UserForm({Key? key, this.initialName, this.initialEmail}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameCtrl;
  late TextEditingController _emailCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.initialName ?? '');
    _emailCtrl = TextEditingController(text: widget.initialEmail ?? '');
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      // Placeholder: call usecase or dispatch BLoC event
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Usuario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(controller: _nameCtrl, decoration: const InputDecoration(labelText: 'Nombre'), validator: Validators.validateNotEmpty),
              const SizedBox(height: 12),
              TextFormField(controller: _emailCtrl, decoration: const InputDecoration(labelText: 'Email'), validator: Validators.validateEmail),
              const SizedBox(height: 18),
              Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: _submit, child: const Text('Guardar'))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
