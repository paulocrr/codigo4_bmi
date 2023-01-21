import 'package:codigo4_bmi/widgets/selector_card.dart';
import 'package:codigo4_bmi/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Calculadora BMI',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SelectorCard(),
          const SliderCard(
            title: 'Peso (kg)',
            min: 20,
            max: 120,
            initialValue: 40,
          ),
          const SliderCard(
            title: 'Altura (cm)',
            min: 140,
            max: 210,
            initialValue: 170,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
              ),
              onPressed: () {
                print("Calcular BMI");
              },
              child: const Text("Calcular BMI"),
            ),
          ),
        ],
      ),
    );
  }
}
