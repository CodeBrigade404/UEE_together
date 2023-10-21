class CarouselItem {
  final String imageUrl;
  final String name;

  CarouselItem({
    required this.imageUrl,
    required this.name,
  });
}

class Discover {
  final String imageUrl;
  final String title;
  final String description;
  final int tax;
  final String type;
  final double distance;
  final String date;
  final String location;
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventVenue;
  final String eventDescription;
  final List<CarouselItem> artistLineup;
  final List<CarouselItem> carouselItems;
  Discover({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.tax,
    required this.type,
    required this.distance,
    required this.date,
    required this.location,
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventVenue,
    required this.eventDescription,
    required this.artistLineup,
    required this.carouselItems,
  });
}

