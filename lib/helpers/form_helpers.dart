import 'package:flutter/material.dart';

/// Helpers for forms (e.g., focus management, field builders)
class FormHelpers {
  static Widget buildTextField({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      validator: validator,
    );
  }
}
