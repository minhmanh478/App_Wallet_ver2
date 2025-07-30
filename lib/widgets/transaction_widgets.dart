import 'package:flutter/material.dart';

class GiaoDichWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String iconPath;
  final Color backgroundColor;

  const GiaoDichWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.iconPath,
    this.backgroundColor = const Color(0xFFE9FFEC),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            iconPath,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Color(0xFF545454)),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              amount,
              style: const TextStyle(
                color: Color(0xFF545454),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Image.asset(
              iconPath,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
