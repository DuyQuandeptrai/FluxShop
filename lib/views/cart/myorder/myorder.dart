import 'package:flutter/material.dart';
import 'package:fluxapp/widgets/slidebar.dart';

import 'orderDetail1.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  String selectedStatus = 'Pending'; // Giá trị ban đầu

  final List<Map<String, dynamic>> orders = [
    {
      'orderId': '1524',
      'date': '13/05/2025',
      'trackingNumber': 'HKJ456789',
      'quantity': 3,
      'subtotal': 150.0,
      'status': 'Pending',
    },
    {
      'orderId': '1525',
      'date': '14/05/2025',
      'trackingNumber': 'ABC123456',
      'quantity': 2,
      'subtotal': 89.99,
      'status': 'Delivered',
    },
    {
      'orderId': '1526',
      'date': '15/05/2025',
      'trackingNumber': 'XYZ987654',
      'quantity': 5,
      'subtotal': 210.00,
      'status': 'Cancelled',
    },
    {
      'orderId': '1527',
      'date': '16/05/2025',
      'trackingNumber': 'LMN123456',
      'quantity': 1,
      'subtotal': 49.99,
      'status': 'Pending',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'My Order',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.notifications_active, size: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  buildStatusButton('Pending'),
                  Spacer(),
                  buildStatusButton('Delivered'),
                  Spacer(),
                  buildStatusButton('Cancelled'),
                ],
              ),
              SizedBox(height: 30),
              ...orders
                  .where((order) => order['status'] == selectedStatus)
                  .map((order) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: orderDetail(
                          orderId: order['orderId'],
                          date: order['date'],
                          trackingNumber: order['trackingNumber'],
                          quantity: order['quantity'],
                          subtotal: order['subtotal'],
                          status: order['status'],
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatusButton(String status) {
    final bool isSelected = selectedStatus == status;

    return SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedStatus = status;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Color(0xFF43484B) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide(color: Colors.black),
        ),
        child: Text(
          status,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Container orderDetail({
    required String orderId,
    required String date,
    required String trackingNumber,
    required int quantity,
    required double subtotal,
    required String status,
  }) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 245, 245),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Order #$orderId',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(date, style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text('Tracking number: ',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(width: 20),
                Text(trackingNumber,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text('Quantity: ',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(width: 20),
                Text('$quantity',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Spacer(),
                Text('Subtotal: ',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(width: 20),
                Text('\$${subtotal.toStringAsFixed(2)}',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(status.toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        //color: Color.fromARGB(255, 252, 1, 1),
                        color: status == 'Pending'
                            ? Colors.orange
                            : status == 'Delivered'
                                ? Colors.green
                                : Colors.red,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Orderdetail1(
                          orderId: orderId,
                          date: date,
                          trackingNumber: trackingNumber,
                          quantity: quantity,
                          subtotal: subtotal,
                          status: status,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Details',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
