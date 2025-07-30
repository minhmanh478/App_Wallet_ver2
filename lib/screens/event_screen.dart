import 'package:app_wallet/widgets/app_bar_custom.dart';
import 'package:app_wallet/widgets/event_widget.dart';
import 'package:flutter/material.dart';

class SuKienScreen extends StatelessWidget {
  const SuKienScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDEE9FF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            const AppBarWidgets(
              titleText: 'Nhiệm vụ',
              subtitle1: 'Làm nhiệm vụ mỗi ngày',
              subtitle2: 'Hoàn thành nhiệm vụ và nhận thưởng',
              coinAmount: '123.456.789',
              imagePath: 'assets/images/img_nhiemvu.png',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 17, 18, 17),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 188,
                          height: 29,
                          decoration: const BoxDecoration(
                            color: Color(0xFF308FFF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 11),
                          child: const Text(
                            'Sự kiện nhận myU Coin',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(top: 8, right: 11),
                          child: Text(
                            'Xem tất cả >',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF595959),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img1.png',
                            ),
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img2.png',
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img1.png',
                            ),
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img2.png',
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img1.png',
                            ),
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img2.png',
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img1.png',
                            ),
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img2.png',
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img1.png',
                            ),
                            SuKienWidgets(
                              text: 'Tết trung thu\n2025',
                              imagePath: 'assets/images/img2.png',
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
