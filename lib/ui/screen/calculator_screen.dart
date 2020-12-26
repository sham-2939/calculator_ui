import 'package:calculatorapp/core/constants/colors.dart';
import 'package:calculatorapp/ui/custom_widgets/green_rounded_boutton.dart';
import 'package:calculatorapp/ui/custom_widgets/grey_rounded_button.dart';
import 'package:calculatorapp/ui/custom_widgets/white_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String valueText = '';
  String answerText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainThemeColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 160.0, right: 10.0),
              child: Text(
                answerText,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    valueText,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.backspace,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    onPressed: (){
                      valueText = valueText.substring(0, valueText.length - 1);
                      setState(() {
                        print('Backspace Pressed');
                      },
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: darkGreyBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          WhiteRoundedButton(
                            value: 'AC',
                            onPressed: (){
                              print('0 Pressed');
                            },
                          ),
                          GreyRoundedButton(
                            value: '1',
                            onPressed: (){
                              valueText = valueText + '1';
                              setState(() {

                              });
                              print('1 Pressed');
                            },
                          ),
                          GreyRoundedButton(
                            value: '4',
                            onPressed: (){
                              print('4 Pressed');
                            },
                          ),
                          GreyRoundedButton(
                            value: '7',
                            onPressed: (){
                              print('7 Pressed');
                            },
                          ),
                          WhiteRoundedButton(
                            value: '+|-',
                            onPressed: (){
                              print('0 Pressed');
                            },
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WhiteRoundedButton(
                            value: '%',
                            onPressed: (){
                              print('% Pressed');
                            },
                          ),
                          GreyRoundedButton(
                            value: '2',
                            onPressed: (){
                              print('2 Pressed');
                            },
                          ),GreyRoundedButton(
                            value: '5',
                            onPressed: (){
                              print('5 Pressed');
                            },
                          ),GreyRoundedButton(
                            value: '8',
                            onPressed: (){
                              print('8 Pressed');
                            },
                          ),GreyRoundedButton(
                            value: '0',
                            onPressed: (){
                              print('0 Pressed');
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WhiteRoundedButton(
                            value: '\u00F7',
                            onPressed: (){
                              print('\u00F7 Pressed');
                            },
                          ),
                          GreyRoundedButton(
                            value: '3',
                            onPressed: (){
                              print('3 Pressed');
                            },
                          ),GreyRoundedButton(
                            value: '6',
                            onPressed: (){
                              print('6 Pressed');
                            },
                          ),GreyRoundedButton(
                            value: '9',
                            onPressed: (){
                              print('9 Pressed');
                            },
                          ),
                          WhiteRoundedButton(
                            value: '.',
                            onPressed: (){
                              print(' . Pressed');
                            },
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WhiteRoundedButton(
                            value: 'x',
                            onPressed: (){
                              print('x Pressed');
                            },
                          ),WhiteRoundedButton(
                            value: '+',
                            onPressed: (){
                              print('+ Pressed');
                            },
                          ),WhiteRoundedButton(
                            value: '-',
                            onPressed: (){
                              print('- Pressed');
                            },
                          ),
                          GreenRoundedButton(
                            value: '=',
                            onPressed: (){
                              print('= Pressed');
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
