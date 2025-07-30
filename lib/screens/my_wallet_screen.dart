import 'package:app_wallet/screens/task_screen.dart';
import 'package:app_wallet/screens/event_screen.dart';
import 'package:app_wallet/screens/transaction_history_screen.dart';
import 'package:app_wallet/widgets/app_bar_custom.dart';
import 'package:app_wallet/widgets/check_in_widget.dart';
import 'package:app_wallet/widgets/menu_widget.dart';
import 'package:app_wallet/widgets/task_widgets.dart';
import 'package:app_wallet/widgets/event_widget.dart';
import 'package:flutter/material.dart';

class ViCuaToiScreen extends StatelessWidget {
  const ViCuaToiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var diemDanhWidgets = DiemDanhWidgets(
      coinText: '+100',
      iconPath: 'assets/icons/verify.png',
      bottomText: 'Ngày 5',
      onTap: () {},
    );
    return Scaffold(
      backgroundColor: const Color(0xFFDEE9FF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            const AppBarWidgets(
              titleText: 'Ví của tôi',
              subtitle1: 'Tích điểm đổi phần thưởng',
              subtitle2: 'Nhanh tay nhận quà hấp dẫn',
              coinAmount: '123.456.789',
              imagePath: 'assets/images/vi.png',
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(32, 17, 32, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuWidget(
                    imagePath: 'assets/icons/diem_danh.png',
                    label: 'Điểm danh',
                    onTap: () {
                      // nút
                    },
                  ),
                  MenuWidget(
                    imagePath: 'assets/icons/nhiem_vu.png',
                    label: 'Nhiệm vụ',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NhiemVuScreens(),
                        ),
                      );
                    },
                  ),
                  MenuWidget(
                    imagePath: 'assets/icons/su_kien.png',
                    label: 'Sự kiện',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SuKienScreen(),
                        ),
                      );
                    },
                  ),
                  MenuWidget(
                    imagePath: 'assets/icons/doi_qua.png',
                    label: 'Đổi quà',
                    onTap: () {
                      // nút
                    },
                  ),
                  MenuWidget(
                    imagePath: 'assets/icons/lich_su.png',
                    label: 'Lịch sử',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LichSuGiaoDichScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 24, 18, 0),
              child: Container(
                height: 119,
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
                          width: 194,
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
                            'Điểm danh nhận myU Coin',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DiemDanhWidgets(
                          coinText: '+100',
                          iconPath: 'assets/icons/verify.png',
                          bottomText: 'Ngày nay',
                          onTap: () {},
                        ),
                        DiemDanhWidgets(
                          coinText: '+100',
                          iconPath: 'assets/icons/verify.png',
                          bottomText: 'Ngày 2',
                          onTap: () {},
                        ),
                        DiemDanhWidgets(
                          coinText: '+100',
                          iconPath: 'assets/icons/verify.png',
                          bottomText: 'Ngày 3',
                          onTap: () {},
                        ),
                        DiemDanhWidgets(
                          coinText: '+100',
                          iconPath: 'assets/icons/verify.png',
                          bottomText: 'Ngày 4',
                          onTap: () {},
                        ),
                        diemDanhWidgets,
                        DiemDanhWidgets(
                          coinText: '+100',
                          iconPath: 'assets/icons/verify.png',
                          bottomText: 'Ngày 6',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // nhiệm vụ

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 17, 18, 0),
              child: Container(
                height: 220,
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
                            'Nhiệm vụ nhận myU Coin',
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
                    const NhiemVuWidgets(),
                    const NhiemVuWidgets(
                      text: 'Nạp tối thiểu 100.000đ vào ví myU',
                    ),
                    const NhiemVuWidgets(
                      text: 'Thanh toán 50k cho giao dịch bất kỳ',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 17, 18, 0),
              child: Container(
                height: 206,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 184, child: SuKienWidgets()),
                        SizedBox(width: 184, child: SuKienWidgets()),
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
