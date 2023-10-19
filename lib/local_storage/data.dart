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

  const EventCategory({
    required this.eventCategoryName,
    required this.eventThumbnailImage,
  });
}

// list of categories
final eventCategories = [
  const EventCategory(
    eventCategoryName: "Test1",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-INTERSTELLAR-28-JULY-2023.jpg",
  ),
  const EventCategory(
    eventCategoryName: "test2",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-INTERSTELLAR-28-JULY-2023.jpg",
  ),
  const EventCategory(
    eventCategoryName: "test3",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-INTERSTELLAR-28-JULY-2023.jpg",
  ),
  const EventCategory(
    eventCategoryName: "test4",
    eventThumbnailImage:
        "https://www.srilankantravelguide.lk/wp-content/uploads/2023/06/EVENT-INTERSTELLAR-28-JULY-2023.jpg",
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



