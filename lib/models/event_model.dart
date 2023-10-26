class PopularEvent {
  final String eventName;
  final String eventImageUrl;
  final String eventCurrentTicketPrice;
  final bool isLiked;
  final String eventDiscountPrice;

  const PopularEvent({
    required this.eventName,
    required this.eventImageUrl,
    required this.eventCurrentTicketPrice,
     required this.eventDiscountPrice,
    required this.isLiked,
  });
}

class EventCategory {
  final String eventCategoryName;
  final String eventThumbnailImage;
  final String description;

  const EventCategory({
    required this.eventCategoryName,
    required this.eventThumbnailImage,
    required this.description,
  });
}
