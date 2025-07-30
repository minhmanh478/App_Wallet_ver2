import 'package:flutter/material.dart';

class SuKienWidgets extends StatelessWidget {
  final String? text;
  final String? imagePath;

  const SuKienWidgets({
    super.key,
    this.text = 'Khai giảng\nnăm mới',
    this.imagePath = 'assets/images/img1.png',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x80DCE7FD),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
            child: Image.asset(
              imagePath ?? 'assets/images/img1.png',
              width: 184,
              height: 101,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 8, 11, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Dùng SizedBox thay vì Flexible để tránh lỗi "unbounded width"
                SizedBox(
                  width: 80,
                  child: Text(
                    text ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // xử lý khi nhấn
                  },
                  child: Container(
                    width: 80,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(0xff2f8fff),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Tham gia',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
