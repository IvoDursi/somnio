extension StringExtension on String {
  /// Obtiene la primera letra en mayúscula y el resto en minúscula.
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
