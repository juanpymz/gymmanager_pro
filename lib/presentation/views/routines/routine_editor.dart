import 'package:flutter/material.dart';

class RoutineEditor extends StatefulWidget {
  const RoutineEditor({Key? key}) : super(key: key);

  @override
  State<RoutineEditor> createState() => _RoutineEditorState();
}

class _RoutineEditorState extends State<RoutineEditor> {
  final _titleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editor de Rutina')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _titleCtrl, decoration: const InputDecoration(labelText: 'Título')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('Guardar')),
          ],
        ),
      ),
    );
  }
}
