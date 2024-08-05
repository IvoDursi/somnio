extension StringExtension on String {
  /// Gets the first letter in uppercase and the rest in lowercase.
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
