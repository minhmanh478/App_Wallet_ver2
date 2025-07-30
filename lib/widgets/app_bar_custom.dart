import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  final String? titleText;
  final String? subtitle1;
  final String? subtitle2;
  final String? coinAmount;
  final String? imagePath;

  const AppBarWidgets({
    super.key,
    this.titleText,
    this.subtitle1,
    this.subtitle2,
    this.coinAmount,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 66, 16, 0),
      decoration: const BoxDecoration(
        color: Color(0xff254ee0),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 16, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        titleText ?? 'Ví của tôi',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    subtitle1 ?? 'Tích myU Coin đổi quà',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle2 ?? 'Nhận ngàn quà tặng',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF308FFF),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Bạn đang có ',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          coinAmount ?? '182.500.000 ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Image(
                          image: AssetImage('assets/icons/coin.png'),
                          width: 19,
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              imagePath ?? 'assets/images/vi.png',
              width: 109,
              height: 134,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
