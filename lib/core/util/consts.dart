import 'package:flutter/material.dart';

extension ColorExtension on String {
  Color toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return Colors.white;
  }

  String toHexString() {
    if (isEmpty) return "FFFFFFFF";
    return this;
  }
}
