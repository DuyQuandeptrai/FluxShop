import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool _showDescription = false;
  bool _showReviews = false;
  bool _showProdctDetails = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: const Color.fromARGB(255, 252, 244, 243),
                  width: double.infinity,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 231, 228),
                            shape: BoxShape.circle,
                          ),
                        ),
                        InteractiveViewer(
                          child: Image.asset(
                            'assets/img/image87.png',
                            width: 350,
                            height: 550,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16, // hoặc 16 tuỳ ý
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                /// ✅ Shadow phía trên (giả lập shadow đầu)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, -1), // Shadow hướng lên trên
                        ),
                      ],
                    ),
                  ),
                ),

                /// ✅ Nội dung scroll
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Sportwear Set',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$ 99.00',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: const Color.fromARGB(255, 0, 105, 61)),
                            Icon(Icons.star,
                                color: const Color.fromARGB(255, 0, 105, 61)),
                            Icon(Icons.star,
                                color: const Color.fromARGB(255, 0, 105, 61)),
                            Icon(Icons.star,
                                color: const Color.fromARGB(255, 0, 105, 61)),
                            Icon(Icons.star,
                                color: const Color.fromARGB(255, 0, 105, 61)),
                          ],
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 211, 210, 210),
                          thickness: 2,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Color',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Text(
                              'Size',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width:
                                  40, // Đường kính hình tròn, bạn có thể chỉnh lại
                              height: 40,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                                color: Colors.black, // Màu nền hình tròn
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 251, 251, 251), // Màu viền
                                  width: 5, // Độ dày viền
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width:
                                  40, // Đường kính hình tròn, bạn có thể chỉnh lại
                              height: 40,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                                color: const Color.fromARGB(
                                    255, 7, 239, 65), // Màu nền hình tròn
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 251, 251, 251), // Màu viền
                                  width: 5, // Độ dày viền
                                ),
                              ),
                            ),
                            Container(
                              width:
                                  40, // Đường kính hình tròn, bạn có thể chỉnh lại
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                                color: const Color.fromARGB(
                                    255, 210, 0, 0), // Màu nền hình tròn
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 251, 251, 251), // Màu viền
                                  width: 5, // Độ dày viền
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'L',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          thickness: 2,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showDescription = !_showDescription;
                            });
                          },
                          child: Row(
                            children: [
                              const Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                _showDescription
                                    ? Icons.expand_less
                                    : Icons.chevron_right,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        AnimatedCrossFade(
                            firstChild: SizedBox.shrink(),
                            secondChild: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'Đây là mô tả sản phẩm. Bạn có thể thay đổi nội dung này.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87),
                              ),
                            ),
                            crossFadeState: _showDescription
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            duration: const Duration(milliseconds: 350),
                            firstCurve: Curves.easeInOut, // 👈 mượt hơn
                            secondCurve: Curves.easeInOut),
                        SizedBox(height: 10),
                        Divider(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          thickness: 2,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showReviews = !_showReviews;
                            });
                          },
                          child: Row(
                            children: [
                              const Text(
                                'Reviews',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                _showReviews
                                    ? Icons.expand_less
                                    : Icons.chevron_right,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        AnimatedCrossFade(
                            firstChild: SizedBox.shrink(),
                            secondChild: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'Đây là mô tả sản phẩm. Bạn có thể thay đổi nội dung này.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87),
                              ),
                            ),
                            crossFadeState: _showReviews
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            duration: const Duration(milliseconds: 350),
                            firstCurve: Curves.easeInOut, // 👈 mượt hơn
                            secondCurve: Curves.easeInOut),
                        SizedBox(height: 10),
                        Divider(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          thickness: 2,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showProdctDetails = !_showProdctDetails;
                            });
                          },
                          child: Row(
                            children: [
                              const Text(
                                'Similar Products',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                _showProdctDetails
                                    ? Icons.expand_less
                                    : Icons.chevron_right,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        AnimatedCrossFade(
                            firstChild: SizedBox.shrink(),
                            secondChild: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'Đây là mô tả sản phẩm. Bạn có thể thay đổi nội dung này.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87),
                              ),
                            ),
                            crossFadeState: _showProdctDetails
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            duration: const Duration(milliseconds: 350),
                            firstCurve: Curves.easeInOut, // 👈 mượt hơn
                            secondCurve: Curves.easeInOut),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SizedBox(
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 0, 0, 0), // Đảm bảo nút cũng màu vàng
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                // Action
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_cart, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
