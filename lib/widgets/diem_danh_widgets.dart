import 'package:flutter/material.dart';

class DiemDanhWidgets extends StatelessWidget {
  final String? coinText;
  final String? iconPath;
  final String? bottomText;
  final VoidCallback? onTap;

  const DiemDanhWidgets({
    super.key,
    this.coinText,
    this.iconPath,
    this.bottomText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 9, 9, 0),
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff0054ff),
                    Color(0xff00a3ff),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    coinText ?? '+100',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Image.asset(
                    iconPath ?? 'assets/icons/verify.png',
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          bottomText ?? 'Hôm nay',
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
