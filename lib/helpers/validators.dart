/// Simple validators for forms.
class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email requerido';
    final regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}");
    if (!regex.hasMatch(value)) return 'Email inválido';
    return null;
  }

  static String? validateNotEmpty(String? value) {
    if (value == null || value.trim().isEmpty) return 'Campo requerido';
    return null;
  }
}
