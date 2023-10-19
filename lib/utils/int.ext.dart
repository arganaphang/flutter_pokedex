extension LeftPad on int {
  String leftPad(int width) {
    return "$this".padLeft(width, "0");
  }
}
