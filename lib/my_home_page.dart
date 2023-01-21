import 'package:codigo4_bmi/widgets/custom_card.dart';
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
          Row(
            children: [
              Expanded(
                child: CustomCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/male.png"),
                      const Text("Hombre"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CustomCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/female.png"),
                      const Text("Mujer"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomCard(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "Peso",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Text(
                    "60",
                    style: TextStyle(fontSize: 32),
                  ),
                  Slider(
                    min: 20,
                    max: 200,
                    value: 60,
                    onChanged: (_) {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
