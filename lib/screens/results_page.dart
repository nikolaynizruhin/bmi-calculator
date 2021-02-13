import 'package:flutter/material.dart';
import 'package:flutter_app/calculator.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final Calculator calculator;

  ResultsPage({ this.calculator });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              isActive: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    calculator.getResult().toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    calculator.getBMI().toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    calculator.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          Button(
            title: 'RE-CALCULATE',
            onPress: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
