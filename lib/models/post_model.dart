class Post {
  final String id;
  final String caption;
  final String image;

  Post({required this.id, required this.caption, required this.image});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      caption: json['caption'],
      image: json['image'],
    );
  }

  //toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'caption': caption,
      'image': image,
    };
  }
}
