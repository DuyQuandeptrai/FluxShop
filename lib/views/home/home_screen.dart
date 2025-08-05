import 'package:flutter/material.dart';
import 'package:fluxapp/core/api/api.dart';
import 'package:fluxapp/models/product.dart';
import 'package:fluxapp/views/home/product_detail.dart';
import 'package:fluxapp/widgets/slidebar.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Spacer(),
                Text('GemStore',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Image.asset(
                  'assets/icons/icons8-bell-24.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4), // Độ dày viền đen
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 238, 238, 238), // Màu nền ngoài cùng
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(205, 97, 26, 0),
                        width: 2), // Viền đen
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2), // Độ dày viền trắng
                    decoration: BoxDecoration(
                      color:
                          const Color.fromARGB(205, 97, 26, 0), // Màu nền xanh
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.transparent, // Để nền trong suốt
                      child: Icon(
                        Icons.female_outlined, // Đổi thành icon bạn muốn
                        size: 32, // Điều chỉnh kích thước icon
                        color: Colors.white, // Màu icon
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(4), // Độ dày viền đen
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 238, 238, 238), // Màu nền ngoài cùng
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(205, 97, 26, 0),
                        width: 2), // Viền đen
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2), // Độ dày viền trắng
                    decoration: BoxDecoration(
                      color:
                          const Color.fromARGB(205, 97, 26, 0), // Màu nền xanh
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.transparent, // Để nền trong suốt
                      child: Icon(
                        Icons.male_outlined, // Đổi thành icon bạn muốn
                        size: 32, // Điều chỉnh kích thước icon
                        color: Colors.white, // Màu icon
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(4), // Độ dày viền đen
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 238, 238, 238), // Màu nền ngoài cùng
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(205, 97, 26, 0),
                        width: 2), // Viền đen
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2), // Độ dày viền trắng
                    decoration: BoxDecoration(
                      color:
                          const Color.fromARGB(205, 97, 26, 0), // Màu nền xanh
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.transparent, // Để nền trong suốt
                      child: Icon(
                        Icons
                            .remove_red_eye_outlined, // Đổi thành icon bạn muốn
                        size: 32, // Điều chỉnh kích thước icon
                        color: Colors.white, // Màu icon
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(4), // Độ dày viền đen
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 238, 238, 238), // Màu nền ngoài cùng
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(205, 97, 26, 0),
                        width: 2), // Viền đen
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2), // Độ dày viền trắng
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          205, 246, 246, 246), // Màu nền xanh
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: const Color.fromARGB(
                          0, 255, 255, 255), // Để nền trong suốt
                      child: Icon(
                          Icons
                              .face_retouching_natural, // Đổi thành icon bạn muốn
                          size: 32, // Điều chỉnh kích thước icon
                          color: const Color.fromARGB(255, 0, 0, 0) // Màu icon
                          ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Bo góc cho ảnh
                child: Stack(
                  children: [
                    // Ảnh nền
                    Image.asset(
                      'assets/img/shutterstock_1781009285 1.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),

                    // Chữ đè lên ảnh
                    Positioned(
                      bottom: 140,
                      left: 200,
                      child: Text(
                        'Autumn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 4,
                                color: Colors.black,
                                offset: Offset(2, 2)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 250,
                      child: Text(
                        'Colection',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 4,
                                color: Colors.black,
                                offset: Offset(2, 2)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Feature Products',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Text('Show all',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => ProductDetail(),
            //               ));
            //         },
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               ClipRRect(
            //                 borderRadius:
            //                     BorderRadius.circular(10), // Bo góc cho ảnh
            //                 child: Image.asset(
            //                   'assets/img/image55.png',
            //                   width: 150,
            //                   height: 200,
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               Text('Long Sleeve Dress',
            //                   style: TextStyle(
            //                       fontSize: 16,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.normal)),
            //               Text('\$ 100.00',
            //                   style: TextStyle(
            //                       fontSize: 18,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.bold)),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 20), // Khoảng cách giữa các sản phẩm
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             ClipRRect(
            //               borderRadius:
            //                   BorderRadius.circular(10), // Bo góc cho ảnh
            //               child: Image.asset(
            //                 'assets/img/image54.png',
            //                 width: 150,
            //                 height: 200,
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //             SizedBox(height: 10),
            //             Text('Long Sleeve Dress',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.normal)),
            //             Text('\$ 100.00',
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold)),
            //           ],
            //         ),
            //       ),
            //       SizedBox(width: 20), // Khoảng cách giữa các sản phẩm
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             ClipRRect(
            //               borderRadius:
            //                   BorderRadius.circular(10), // Bo góc cho ảnh
            //               child: Image.asset(
            //                 'assets/img/image 48.png',
            //                 width: 150,
            //                 height: 200,
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //             SizedBox(height: 10),
            //             Text('Long Sleeve Dress',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.normal)),
            //             Text('\$ 100.00',
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            FutureBuilder<List<Product>>(
              future: fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Lỗi: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('Không có sản phẩm nào');
                }

                final products = snapshot.data!;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(products.length, (index) {
                      final product = products[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            // Điều hướng đến trang chi tiết nếu cần
                          },
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'http://10.0.2.2:3000/images/${product.imageUrl}',
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error,
                                            stackTrace) =>
                                        Container(
                                            width: 150,
                                            height: 200,
                                            color: Colors.grey[300],
                                            child:
                                                const Icon(Icons.broken_image)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(product.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                Text('\$${product.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),

            SizedBox(height: 20),
            Container(
              //color: const Color.fromARGB(255, 226, 225, 225),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 226, 225, 225),
              ),
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text('I new collection',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black38,
                          fontWeight: FontWeight.w600)),
                  Spacer(),
                  Image.asset(
                    'assets/img/image64.png',
                    width: 120,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Recommended',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Text('Show all',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 270,
                    height: 130,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image65.png',
                            width: 100,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa các sản phẩm
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Long Sleeve Dress',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('\$ 100.00',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 270,
                    height: 130,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image66.png',
                            width: 100,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa các sản phẩm
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Long Sleeve Dress',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('\$ 100.00',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Top Collection',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Text('Show all',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            Container(
              color: const Color.fromARGB(255, 236, 208, 208),
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Text('Sale up to 40%',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Text('FOR SLIM',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300)),
                      Text('& BEAUTY',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/img/image48.png',
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: const Color.fromARGB(255, 233, 232, 232),
              height: 240,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Text('Colection 2021',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Text('Most Popular',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold)),
                      Text('& fabulous',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/img/image69.png',
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
