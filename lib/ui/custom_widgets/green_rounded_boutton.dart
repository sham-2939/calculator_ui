import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenRoundedButton extends StatelessWidget {
  final value;
  final Function onPressed;

  GreenRoundedButton({this.onPressed, this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 220,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
