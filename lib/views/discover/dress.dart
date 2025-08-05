import 'package:flutter/material.dart';

class Dress extends StatelessWidget {
  const Dress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64, // Tăng chiều cao AppBar
        titleSpacing: 0,
        title: Text(
          'Dress',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Text('152 Results',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 139, 99),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.filter_list, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image91.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image78.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image55.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image55.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image55.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Bo góc cho ảnh
                          child: Image.asset(
                            'assets/img/image55.png',
                            width: 130,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Long Sleeve Dress',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        Text('\$ 100.00',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                            Icon(Icons.star,
                                color: Color(0xFF508A7B), size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
