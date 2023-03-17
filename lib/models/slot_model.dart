class Slot {
  final String from;
  final String to;
  bool isSelected;
  final bool isAvailable;

  Slot(
      {required this.from,
      required this.to,
      this.isSelected = false,
      this.isAvailable = true});
}