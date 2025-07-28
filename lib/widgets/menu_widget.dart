import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  const MenuWidget({
    super.key,
    required this.imagePath,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 39,
            height: 39,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
