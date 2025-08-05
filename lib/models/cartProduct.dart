class CartProduct {
  final String title;
  final String price;
  final String imagePath;
  final String detail;
  int quantity;
  bool isChecked;

  CartProduct({
    required this.title,
    required this.price,
    required this.imagePath,
    required this.detail,
    this.quantity = 1,
    this.isChecked = true,
  });
}
