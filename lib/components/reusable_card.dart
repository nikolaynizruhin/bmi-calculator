import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final bool isActive;
  final Function onPress;

  ReusableCard({ this.child, this.onPress, this.isActive = false });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(isActive ? 0xFF1D1E33 : 0xFF111328),
        ),
      ),
    );
  }
}
