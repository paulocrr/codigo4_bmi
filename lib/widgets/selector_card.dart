import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:codigo4_bmi/widgets/image_card.dart';
import 'package:flutter/material.dart';

class SelectorCard extends StatefulWidget {
  final Function(String val)? onChange;
  const SelectorCard({super.key, this.onChange});

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
              if (widget.onChange != null) {
                widget.onChange!("Hombre");
              }
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
                  if (widget.onChange != null) {
                    widget.onChange!("Mujer");
                  }
                });
              }),
        ),
      ],
    );
  }
}
