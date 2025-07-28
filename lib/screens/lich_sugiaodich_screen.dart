import 'package:app_wallet/widgets/giaodich_widgets.dart';
import 'package:flutter/material.dart';

class LichSuGiaoDichScreen extends StatefulWidget {
  const LichSuGiaoDichScreen({super.key});

  @override
  State<LichSuGiaoDichScreen> createState() => _LichSuGiaoDichScreenState();
}

class _LichSuGiaoDichScreenState extends State<LichSuGiaoDichScreen> {
  int selectedIndex = 0;
  final List<String> filters = ['Tất cả', 'Tích được', 'Đã quy đổi', 'Hết hạn'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 14, 16, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Lịch sử giao dịch',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 23, 0, 0),
                child: Row(
                  children: List.generate(filters.length, (index) {
                    bool isSelected = selectedIndex == index;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF254EE0)
                                : const Color(0xFFDEE9FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            filters[index],
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFF545454),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Column(
                  children: List.generate(5, (index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: GiaoDichWidget(
                        title: 'Làm nhiệm vụ thành công',
                        subtitle: '16:46 - 26/11/2023',
                        amount: '+10.000',
                        iconPath: 'assets/icons/coin.png',
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
