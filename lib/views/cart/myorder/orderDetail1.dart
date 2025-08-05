import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluxapp/views/home/home_screen.dart';

class Orderdetail1 extends StatefulWidget {
  final String orderId;
  final String date;
  final String trackingNumber;
  final int quantity;
  final double subtotal;
  final String status;

  const Orderdetail1({
    super.key,
    required this.orderId,
    required this.date,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.status,
  });

  @override
  State<Orderdetail1> createState() => _Orderdetail1State();
}

class _Orderdetail1State extends State<Orderdetail1> {
  String selecteButton = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Order #${widget.orderId}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF575757),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your order is ${widget.status}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Rate product to get 10% off on next order',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.check_circle_rounded,
                        color: Colors.green, size: 30),
                    SizedBox(width: 40),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 163, 163, 163),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Order number',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text('#${widget.orderId}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Tracking number',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text('#${widget.trackingNumber}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Delivery address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text('153 Nguyen Van Cu Street',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 163, 163, 163),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Maxi Dress',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(width: 80),
                          Text('x${widget.quantity}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text('\$12',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Linen Dress',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(width: 80),
                          Text('x${widget.quantity}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text('\$544',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('Sub total',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text('\$556',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Shipping',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text('\$5',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text('\$${widget.subtotal}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selecteButton = 'Return home';
                        });
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selecteButton == 'Return home'
                            ? Colors.black
                            : Colors.white,
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                      child: Text('Return home',
                          style: TextStyle(
                              color: selecteButton == 'Return home'
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selecteButton = 'rate';
                        });
                        // Thêm logic mở màn hình đánh giá nếu cần
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selecteButton == 'rate'
                            ? Colors.black
                            : Colors.white,
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                      child: Text('Rate',
                          style: TextStyle(
                            color: selecteButton == 'rate'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
