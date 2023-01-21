import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:codigo4_bmi/widgets/image_card.dart';
import 'package:flutter/material.dart';

class SelectorCard extends StatefulWidget {
  const SelectorCard({super.key});

  @override
  State<SelectorCard> createState() => _SelectorCardState();
}

class _SelectorCardState extends State<SelectorCard> {
  var _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ImageCard(
            image: 'images/male.png',
            text: "Hombre",
            isSelected: _isSelected,
            onPressed: () {
              setState(() {
                _isSelected = true;
              });
            },
          ),
        ),
        Expanded(
          child: ImageCard(
              image: 'images/female.png',
              text: "Mujer",
              isSelected: !_isSelected,
              onPressed: () {
                setState(() {
                  _isSelected = false;
                });
              }),
        ),
      ],
    );
  }
}
