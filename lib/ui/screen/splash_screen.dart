import 'package:calculatorapp/core/constants/colors.dart';
import 'package:calculatorapp/ui/screen/calculator_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(
        seconds: 2,
      ),
    ).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CalculatorScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\u002B',
                            style: TextStyle(
                              fontSize: 62.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Text(
                            '\u00D7',
                            style: TextStyle(
                              fontSize: 62.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        '\u00F7',
                        style: TextStyle(
                          fontSize: 62.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Text(
                      '\u002D',
                      style: TextStyle(
                        fontSize: 52.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Text(
                'Calculator',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFF2F2F2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
