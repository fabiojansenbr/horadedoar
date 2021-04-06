import 'package:flutter/material.dart';

class HdTextButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Function onPressed;

  const HdTextButton(
      {Key key, this.label, this.backgroundColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 5.0,
          padding: EdgeInsets.all(18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: this.backgroundColor,
        ),
        onPressed: this.onPressed,
        child: Text(
          this.label,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
