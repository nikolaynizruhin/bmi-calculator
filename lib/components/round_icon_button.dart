import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  RoundIconButton({ this.onPressed, this.icon });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 45,
        height: 45,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
