import 'package:calculatorapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class GreyRoundedButton extends StatelessWidget {
  final value;
  final Function onPressed;

  GreyRoundedButton({this.value, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: mainThemeColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
