import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  final String title;
  final double min;
  final double max;
  final double initialValue;
  final Function(double val)? onChange;

  const SliderCard({
    super.key,
    required this.title,
    required this.min,
    required this.max,
    required this.initialValue,
    this.onChange,
  });

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  late double currentValue;

  @override
  void initState() {
    super.initState();

    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: Colors.transparent,
      backgroundColor: Color(0xFF14193B),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              '${currentValue.round()}',
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Slider(
              min: widget.min,
              max: widget.max,
              value: currentValue,
              activeColor: Colors.white,
              thumbColor: Color(0xFFFF0067),
              onChanged: (value) {
                setState(() {
                  currentValue = value;
                });

                if (widget.onChange != null) {
                  widget.onChange!(currentValue);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
