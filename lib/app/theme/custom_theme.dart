import 'package:flutter/material.dart';

class CustomTheme {
  static BoxDecoration cfBoxDecorationStyle;

  static init(BuildContext context) {
    cfBoxDecorationStyle = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6.0,
          offset: Offset(0, 2),
        ),
      ],
    );
  }
}
