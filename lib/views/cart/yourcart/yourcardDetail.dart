import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final String detail;
  final int quantity;
  final bool isChecked;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onToggleCheck;

  const CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.detail,
    required this.quantity,
    required this.isChecked,
    required this.onAdd,
    required this.onRemove,
    required this.onToggleCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: const Color.fromARGB(219, 233, 233, 233),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: Image.asset(
                imagePath,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                  Text(price,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(detail,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onToggleCheck,
                    child: Icon(
                      isChecked
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: isChecked ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 172, 172, 172),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onRemove,
                          child: const Text('-',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500)),
                        ),
                        Text('$quantity',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        GestureDetector(
                          onTap: onAdd,
                          child: const Text('+',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
