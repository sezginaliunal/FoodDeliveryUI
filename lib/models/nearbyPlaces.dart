class NearbyPlaces {
  int? id;
  String? title;
  String? subtitle;
  String? imageUrl;
  String? icon;

  NearbyPlaces(
      {required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.icon});
  NearbyPlaces.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    imageUrl = json['imageUrl'];
    icon = json['icon'];
  }
}
