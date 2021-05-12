import 'package:flutter/material.dart';
import 'package:horadedoar/app/theme/custom_theme.dart';

class HdTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextEditingController controller;

  const HdTextField({Key key, this.hintText, this.prefixIcon, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: CustomTheme.cfBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: this.controller,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: this.prefixIcon,
              hintText: this.hintText,
            ),
          ),
        ),
      ],
    );
  }
}
