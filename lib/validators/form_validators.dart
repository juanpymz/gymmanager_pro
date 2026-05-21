/// Additional validators for complex rules.
class FormValidators {
  static String? validatePositiveNumber(String? value) {
    if (value == null || value.isEmpty) return 'Requerido';
    final n = double.tryParse(value);
    if (n == null || n <= 0) return 'Debe ser un número positivo';
    return null;
  }
}
