import 'package:codigo4_bmi/widgets/custom_card.dart';
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
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = true;
              });
            },
            child: CustomCard(
              backgroundColor: _isSelected ? Colors.blue : Colors.white,
              borderColor: _isSelected ? Colors.black : Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/male.png"),
                  Text(
                    "Hombre",
                    style: _isSelected
                        ? const TextStyle(fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = false;
              });
            },
            child: CustomCard(
              backgroundColor: !_isSelected ? Colors.blue : Colors.white,
              borderColor: !_isSelected ? Colors.black : Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/female.png"),
                  Text(
                    "Mujer",
                    style: !_isSelected
                        ? const TextStyle(fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
