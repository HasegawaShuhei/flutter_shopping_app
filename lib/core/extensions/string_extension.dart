extension StringExtension on String {
  DateTime toDate() => DateTime.parse(this);
  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);
  String ifIsEmpty(String placeholder) {
    return isEmpty ? placeholder : this;
  }
}
