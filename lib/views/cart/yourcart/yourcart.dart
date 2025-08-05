import 'package:flutter/material.dart';
import 'package:fluxapp/models/cartProduct.dart';

import 'package:fluxapp/views/cart/yourcart/yourcardDetail.dart';

class YourCart extends StatefulWidget {
  const YourCart({super.key});

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  List<CartProduct> cartProducts = [
    CartProduct(
      title: 'Sportwear Set',
      price: '\$100.00',
      imagePath: 'assets/img/image54.png',
      detail: 'Size: M | Color: Black',
    ),
    CartProduct(
      title: 'Running Shoes',
      price: '\$80.00',
      imagePath: 'assets/img/image55.png',
      detail: 'Size: 10 | Color: White',
    ),
    CartProduct(
      title: 'Running Shoes',
      price: '\$80.00',
      imagePath: 'assets/img/image55.png',
      detail: 'Size: 10 | Color: White',
    ),
  ];

  double get subtotal {
    return cartProducts.where((product) => product.isChecked).fold(0.0,
        (total, product) {
      final price = double.tryParse(product.price.replaceAll('\$', '')) ?? 0.0;
      return total + (price * product.quantity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Cart',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Danh sách giỏ hàng
            Expanded(
              child: ListView.separated(
                itemCount: cartProducts.length,
                separatorBuilder: (_, __) => const SizedBox(height: 20),
                itemBuilder: (context, index) {
                  final product = cartProducts[index];
                  return CartItem(
                    title: product.title,
                    price: product.price,
                    imagePath: product.imagePath,
                    detail: product.detail,
                    quantity: product.quantity,
                    isChecked: product.isChecked,
                    onAdd: () {
                      setState(() {
                        product.quantity++;
                      });
                    },
                    onRemove: () {
                      setState(() {
                        if (product.quantity > 1) {
                          product.quantity--;
                        }
                      });
                    },
                    onToggleCheck: () {
                      setState(() {
                        product.isChecked = !product.isChecked;
                      });
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Tính tổng
            _buildRow('Product price', '\$${subtotal.toStringAsFixed(2)}'),
            const Divider(thickness: 1, color: Colors.grey),
            _buildRow('Shipping', '\$0.00'),
            const Divider(thickness: 1, color: Colors.grey),
            _buildRow('Subtotal', '\$${subtotal.toStringAsFixed(2)}',
                isBold: true),
            const SizedBox(height: 10),

            // Nút checkout
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF343434),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Proceed to Checkout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w300,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
