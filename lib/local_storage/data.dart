class Event {
  final String eventName;
  final String eventImageUrl;
  final String eventCurrentTicketPrice;
  final bool isLiked;

  const Event({
    required this.eventName,
    required this.eventImageUrl,
    required this.eventCurrentTicketPrice,
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

final eventCategories = [
  const EventCategory(
    eventCategoryName: "Concerts",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description: "Enjoy live music and performances at top concerts in town.",
  ),
  const EventCategory(
    eventCategoryName: "Sporting Events",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Witness thrilling sports events and cheer for your favorite teams.",
  ),
  const EventCategory(
    eventCategoryName: "Festivals",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Celebrate cultural diversity and traditions at vibrant festivals.",
  ),
  const EventCategory(
    eventCategoryName: "Art Exhibitions",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description: "Explore captivating artworks from talented artists.",
  ),
  const EventCategory(
    eventCategoryName: "Food and Drink",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Savor delicious culinary delights and beverages from around the world.",
  ),
  const EventCategory(
    eventCategoryName: "Family Fun",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Enjoy quality time with your family at fun-filled events and activities.",
  ),
  const EventCategory(
    eventCategoryName: "Conferences",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description: "Attend informative conferences and gain valuable insights.",
  ),
  const EventCategory(
    eventCategoryName: "Outdoor Adventures",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Embark on thrilling outdoor adventures and explore the great outdoors.",
  ),
  const EventCategory(
    eventCategoryName: "Comedy Shows",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Laugh your heart out at hilarious comedy shows and stand-up performances.",
  ),
  const EventCategory(
    eventCategoryName: "Educational",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    description:
        "Expand your knowledge with informative and educational events.",
  ),
];

// list of products
final events = [
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-INTERSTELLAR-28-JULY-2023.jpg",
    eventCurrentTicketPrice: "5000",
    isLiked: true,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENTS-3rd-Generation-2023-Bunuburo-Minibiroyo.jpg",
    eventCurrentTicketPrice: "3920",
    isLiked: false,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/04/16-04-2023-1.jpg",
    eventCurrentTicketPrice: "2040",
    isLiked: true,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/adaraneeya-Rohana.jpg",
    eventCurrentTicketPrice: "5400",
    isLiked: true,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-THARUNAYI-THAMA-15-JULY-2023.png",
    eventCurrentTicketPrice: "2300",
    isLiked: false,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENTS-3rd-Generation-2023-Bunuburo-Minibiroyo.jpg",
    eventCurrentTicketPrice: "2400",
    isLiked: false,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-BEYOUD-BRUNCE-02-JULY-2023.jpg",
    eventCurrentTicketPrice: "2400",
    isLiked: false,
  ),
  const Event(
    eventName: "test1",
    eventImageUrl:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENTS-Summer-Jam-03-June-2023.jpg",
    eventCurrentTicketPrice: "2040",
    isLiked: true,
  ),
];
