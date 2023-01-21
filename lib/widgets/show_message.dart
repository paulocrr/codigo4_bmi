import 'package:flutter/material.dart';

class ShowMessage extends StatelessWidget {
  final double result;
  const ShowMessage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    var message = '';
    var color = Colors.red;

    if (result < 18.5) {
      message = 'Se encuentra dentro del rango de peso insuficiente.';
      color = Colors.red;
    } else if (result >= 18.5 && result <= 24.9) {
      message = 'Se encuentra dentro del rango de peso normal o saludable.';
      color = Colors.green;
    } else if (result >= 25 && result <= 29.9) {
      message = 'Se encuentra dentro del rango de sobrepeso.';
      color = Colors.red;
    } else if (result >= 30) {
      message = 'Se encuentra dentro del rango de obesidad.';
      color = Colors.red;
    }
    return Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(color: color),
    );
  }
}
