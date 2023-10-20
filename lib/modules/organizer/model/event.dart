class Event {
  final String title;
  final String type;
  final String image;
  final String description;
  final String location;
  final String date;
  final double price;
  final int quantity;

  const Event({
    required this.title,
    required this.type,
    required this.image,
    required this.description,
    required this.location,
    required this.date,
    required this.price,
    required this.quantity,
  });
}
