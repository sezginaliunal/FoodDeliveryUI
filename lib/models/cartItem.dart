class CartItem {
  final String name;
  final String description;
  final String image;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.quantity,
  });
}