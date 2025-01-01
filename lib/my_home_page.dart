import 'dart:math';

import 'package:codigo4_bmi/widgets/selector_card.dart';
import 'package:codigo4_bmi/widgets/show_message.dart';
import 'package:codigo4_bmi/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weight = 40.0;
  var height = 170.0;
  var result = 0.0;
  var showResult = false;

  double calculateBmi(double weight, double height) {
    return weight / pow((height / 100), 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF091032),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF091032),
        title: const Text(
          'Calculadora BMI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SelectorCard(),
          SliderCard(
            title: 'Peso (KG)',
            min: 20,
            max: 120,
            initialValue: weight,
            onChange: (val) {
              weight = val;
            },
          ),
          SliderCard(
            title: 'Altura (cm)',
            min: 140,
            max: 210,
            initialValue: height,
            onChange: (val) {
              height = val;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                backgroundColor: Color(0xFFFF0067),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                setState(() {
                  result = calculateBmi(weight, height);
                  showResult = true;
                });
              },
              child: const Text(
                "Calcular BMI",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Visibility(
                  visible: showResult,
                  child: Card(
                    color: Color(0xFF14193B),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Su indice de masa es ${result.round()}",
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          ShowMessage(result: result),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
