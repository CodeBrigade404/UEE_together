class Artist {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;
  final String email;
  final String phone;
  final String location;

  Artist(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.type,
      required this.email,
      required this.phone,
      required this.location});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        description: json['description'],
        type: json['type'],
        email: json['email'],
        phone: json['phone'],
        location: json['location']);
  }

  //toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'type': type,
      'email': email,
      'phone': phone,
      'location': location
    };
  }
}
