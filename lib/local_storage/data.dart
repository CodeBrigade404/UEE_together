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
    eventCategoryName: "Musical Theatre",
    eventThumbnailImage:
        "https://imagedelivery.net/BgoUeL8atCWauiM2VakArA/ef9c2244-077e-46bd-2942-9cab35427400/md",
    description:
        "These are professional theatrical productions with elaborate sets, costumes, and choreography.",
  ),
  const EventCategory(
    eventCategoryName: "Opera",
    eventThumbnailImage:
        "https://cdn.platinumlist.net/upload/event/denis_rodkin_and_friends_ballet_gala_nig_2023_nov_20_dubai_opera_88121-full-en1694783969.jpg",
    description:
        "A regal and opulent design with an operatic scene featuring performers in elaborate costumes",
  ),
  const EventCategory(
    eventCategoryName: "Pop/Rock Concert",
    eventThumbnailImage:
        "https://res.cloudinary.com/dwzmsvp7f/image/fetch/q_75,f_auto,w_1316/https%3A%2F%2Fmedia.insider.in%2Fimage%2Fupload%2Fc_crop%2Cg_custom%2Fv1666092837%2Fywavmcipu9clxpvv9ke6.jpg",
    description:
        "Celebrate cultural diversity and traditions at vibrant festivals.",
  ),
  const EventCategory(
    eventCategoryName: "Jazz Concert",
    eventThumbnailImage:
        "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F356306879%2F566055827867%2F1%2Foriginal.20210922-221241?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C5%2C2178%2C1089&s=e89b7086287d357dc85513bbc739e9ab",
    description:
        "A sophisticated and vintage look with a jazz band in the background. Smoky atmosphere, muted colors, and elegant typography.",
  ),
  const EventCategory(
    eventCategoryName: "Musical Revues",
    eventThumbnailImage:
        "https://cdn.choosechicago.com/uploads/2023/09/Que-Dramaticas.jpg",
    description:
        "A collage-style poster featuring key scenes and characters from various musicals, creatively arranged with artistic flair.",
  ),
  const EventCategory(
    eventCategoryName: "Musical Competitions",
    eventThumbnailImage:
        "https://www.singingaudition.in/wp-content/uploads/2021/10/8469399405598271591-1024x536.jpg",
    description:
        "A spotlight on a microphone with silhouettes of contestants. Glittering text and a sense of anticipation",
  ),
  const EventCategory(
    eventCategoryName: "Opera Buffa (Comic Opera)",
    eventThumbnailImage:
        "https://bpldcassets.blob.core.windows.net/derivatives/images/commonwealth:w9505n170/image_access_800.jpg",
    description:
        "Light-hearted and comedic design featuring characters in humorous situations. Playful fonts and vibrant colors.",
  ),
  const EventCategory(
    eventCategoryName: "Cabaret Show",
    eventThumbnailImage:
        "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F602176439%2F278507940559%2F1%2Foriginal.20230920-101447?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=1ed38d7b3f4e2bb3967fb5794037e587",
    description:
        "Fun and colorful with whimsical characters from the show. Child-friendly fonts and a playful layout",
  ),
  const EventCategory(
    eventCategoryName: "Tribute Show",
    eventThumbnailImage:
        "https://i.pinimg.com/originals/86/3f/95/863f959dc014598082c8dbc9e53f81ca.jpg",
    description:
        "An homage to the artist or band being celebrated, featuring their iconic imagery and a mix of their hit songs.",
  ),
  const EventCategory(
    eventCategoryName: "Benefit Concert",
    eventThumbnailImage:
        "https://www.razomforukraine.org/wp-content/uploads/2023/02/Events_Anniversary-Benefit.jpeg",
    description:
        "Heartfelt and compassionate, featuring images that reflect the cause. Warm colors, script fonts, and a clear call to action",
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
