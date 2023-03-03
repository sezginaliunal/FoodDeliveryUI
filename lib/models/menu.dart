class Menu {
  int? id;
  String? title;
  String? subtitle;
  String? imageUrl;
  String? price;

  Menu(
      {required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.price});
  Menu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    imageUrl = json['imageUrl'];
    price = json['price'];
  }
}
