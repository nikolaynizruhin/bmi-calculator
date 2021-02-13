import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onPress;

  Button({ this.title, this.onPress });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 5),
        height: 50,
        width: double.infinity,
      ),
    );
  }
}
