extension StringX on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toCamelCase() {
    return split(' ').map((String word) {
      return "${word[0].toUpperCase()}${word.substring(1)}";
    }).join('');
  }

  String toSnakeCase() {
    return split(' ').join('_').toLowerCase();
  }
}
