/// ============================================================
/// CAPA CORE - Utilidades de Validación
/// ============================================================
/// Funciones puras de validación reutilizables en toda la aplicación.
/// Cada función retorna `null` si el valor es válido, o un [String]
/// con el mensaje de error si la validación falla.
///
/// Estas funciones se usan tanto en formularios (capa de presentación)
/// como en los casos de uso (capa de dominio) para garantizar la
/// integridad de los datos antes de procesarlos.
/// ============================================================

/// Clase utilitaria con métodos estáticos para validación de datos.
///
/// No se instancia directamente; todos los métodos son estáticos.
class Validators {
  // Constructor privado para prevenir instanciación.
  Validators._();

  /// Expresión regular para validar formato de correo electrónico.
  /// Soporta formatos estándar como usuario@dominio.ext
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  /// Expresión regular para validar números de teléfono.
  /// Acepta formatos con o sin código de país, guiones y espacios.
  /// Ejemplos válidos: +52 55 1234 5678, 5512345678, (55) 1234-5678
  static final RegExp _phoneRegExp = RegExp(
    r'^\+?[\d\s\-\(\)]{7,15}$',
  );

  /// Valida que un correo electrónico tenga formato válido.
  ///
  /// Retorna `null` si el correo es válido.
  /// Retorna un mensaje de error en español si no lo es.
  ///
  /// Ejemplo:
  /// ```dart
  /// final error = Validators.validateEmail('usuario@correo.com'); // null
  /// final error2 = Validators.validateEmail('invalido'); // 'Ingrese un correo electrónico válido'
  /// ```
  static String? validateEmail(String email) {
    if (email.trim().isEmpty) {
      return 'El correo electrónico es obligatorio';
    }

    if (!_emailRegExp.hasMatch(email.trim())) {
      return 'Ingrese un correo electrónico válido';
    }

    return null;
  }

  /// Valida que un campo de texto no esté vacío.
  ///
  /// [value] es el texto a validar.
  /// [fieldName] es el nombre del campo para mostrar en el mensaje de error.
  ///
  /// Retorna `null` si el valor no está vacío.
  /// Retorna un mensaje de error personalizado si lo está.
  ///
  /// Ejemplo:
  /// ```dart
  /// final error = Validators.validateNotEmpty('Juan', 'nombre'); // null
  /// final error2 = Validators.validateNotEmpty('', 'nombre'); // 'El campo nombre es obligatorio'
  /// ```
  static String? validateNotEmpty(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return 'El campo $fieldName es obligatorio';
    }

    return null;
  }

  /// Valida que un número de teléfono tenga formato válido.
  ///
  /// Acepta números con 7-15 dígitos, opcionalmente con código de país,
  /// guiones, espacios y paréntesis.
  ///
  /// Retorna `null` si el teléfono es válido.
  /// Retorna un mensaje de error en español si no lo es.
  ///
  /// Ejemplo:
  /// ```dart
  /// final error = Validators.validatePhone('+52 55 1234 5678'); // null
  /// final error2 = Validators.validatePhone('123'); // 'Ingrese un número de teléfono válido'
  /// ```
  static String? validatePhone(String phone) {
    if (phone.trim().isEmpty) {
      return 'El número de teléfono es obligatorio';
    }

    if (!_phoneRegExp.hasMatch(phone.trim())) {
      return 'Ingrese un número de teléfono válido (7-15 dígitos)';
    }

    return null;
  }

  /// Valida que una contraseña cumpla con los requisitos mínimos de seguridad.
  ///
  /// Requisitos:
  ///   - No puede estar vacía.
  ///   - Debe tener al menos 6 caracteres.
  ///
  /// Retorna `null` si la contraseña es válida.
  /// Retorna un mensaje de error en español si no cumple.
  ///
  /// Ejemplo:
  /// ```dart
  /// final error = Validators.validatePassword('miClave123'); // null
  /// final error2 = Validators.validatePassword('123'); // 'La contraseña debe tener al menos 6 caracteres'
  /// ```
  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'La contraseña es obligatoria';
    }

    if (password.length < 6) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }

    return null;
  }
}
