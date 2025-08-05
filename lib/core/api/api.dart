import 'package:flutter/material.dart';
import 'package:fluxapp/models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApiPage extends StatefulWidget {
  const MyApiPage({super.key});

  @override
  _MyApiPageState createState() => _MyApiPageState();
}

class _MyApiPageState extends State<MyApiPage> {
  String message = 'Loading...';

  @override
  void initState() {
    super.initState();
    fetchMessage();
  }

  Future<void> fetchMessage() async {
    final url =
        Uri.parse('http://10.0.2.2:3000/api/products'); // Đổi IP cho đúng

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          message = data[0]['name'];
        });
      } else {
        setState(() {
          message = 'Lỗi server: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        message = 'Lỗi kết nối: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kết nối API")),
      body: Center(child: Text(message)),
    );
  }
}

Future<List<Product>> fetchProducts() async {
  final url = Uri.parse('http://10.0.2.2:3000/api/products');

  final response = await http.get(url);
  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
