class OrganizerEvent {
  final String id;
  final String title;
  final String type;
  final String image;
  final String description;
  final String location;
  final String date;
  final double price;
  final int quantity;
  final String startTime;
  final String endTime;

  const OrganizerEvent({
    required this.id,
    required this.title,
    required this.type,
    required this.image,
    required this.description,
    required this.location,
    required this.date,
    required this.price,
    required this.quantity,
    required this.startTime,
    required this.endTime,
  });

  factory OrganizerEvent.fromJson(Map<String, dynamic> json) {
    return OrganizerEvent(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      image: json['image'],
      description: json['description'],
      location: json['location'],
      date: json['date'],
      price: json['price'],
      quantity: json['quantity'],
      startTime: json['startTime'],
      endTime: json['endTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'type': type,
      'image': image,
      'description': description,
      'location': location,
      'date': date,
      'price': price,
      'quantity': quantity,
      'startTime': startTime,
      'endTime': endTime,
    };
  }
}
