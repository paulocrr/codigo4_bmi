import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final bool isSelected;
  final String image;
  final String text;
  final VoidCallback? onPressed;

  const ImageCard({
    super.key,
    required this.image,
    required this.text,
    this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomCard(
        backgroundColor: isSelected ? Color(0xFFFF0067) : Color(0xFF14193B),
        borderColor: isSelected ? Color(0xFFFF0067) : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            Text(
              text,
              style: isSelected
                  ? const TextStyle(fontWeight: FontWeight.bold)
                  : const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
