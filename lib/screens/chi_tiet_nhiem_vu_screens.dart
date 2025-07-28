import 'package:flutter/material.dart';

class ChiTietNhiemVu extends StatelessWidget {
  const ChiTietNhiemVu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Nhiệm vụ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Banner
              const Padding(
                padding: EdgeInsets.fromLTRB(18, 19, 18, 0),
                child: Image(
                  image: AssetImage('assets/images/banner_nhiemvu.png'),
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 17, 18, 24),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Từ ngày 20/12/2023, myU dành tặng ưu đãi hoàn tiền đến 50.000 VND cho 10.000 Khách hàng đầu tiên có giao dịch thanh toán hóa đơn điện/nước, thanh toán QR hoặc nạp tiền điện thoại lần đầu trên ứng dụng myU Mobile từ 100.000 VND.\n\n',
                      ),
                      TextSpan(
                        text: 'THÔNG TIN ƯU ĐÃI\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Thời gian diễn ra: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Từ ngày 20/12/2023 đến hết ngày 20/05/2024 hoặc cho đến khi hết ngân sách chương trình\n\n',
                      ),
                      TextSpan(
                        text: 'Cập nhật về thời hạn chương trình:\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Do số lượng suất quà tặng có hạn chương trình sẽ kết thúc sớm hơn dự kiến vào ngày 27/04/2024 thay vì ngày 20/05/2024.\n\n',
                      ),
                      TextSpan(
                        text: 'Đối tượng áp dụng:\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '- Chủ tài khoản thanh toán myU\n- Chưa phát sinh bất kỳ giao dịch thanh toán hóa đơn điện/nước, thanh toán QR cho giao dịch QRVNPay, hoặc nạp tiền điện thoại trên ứng dụng myU Mobile trước thời điểm bắt đầu chương trình',
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18, 63, 18, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      //nút
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff254ee0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Làm ngay',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
