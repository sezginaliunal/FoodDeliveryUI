class Restaurant {
  int? id;
  String? title;
  String? description;
  String? imageUrl;
  String? rating;

  Restaurant(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.rating});
  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    rating = json['rating'];
  }
}
