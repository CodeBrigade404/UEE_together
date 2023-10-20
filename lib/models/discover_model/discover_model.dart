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

final discoverEventImages = <Discover>[
  Discover(
    imageUrl: "https://www.newswire.lk/wp-content/uploads/2022/09/Sahan.jpg",
    title: 'Shana Music Extravaganza',
    description: 'Experience the rich music culture of Sri Lanka!',
    tax: 15,
    type: 'Music Festival',
    distance: 2.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Shana Music Extravaganza',
    eventDate: '2023-11-8',
    eventTime: '19:00',
    eventVenue: 'Colombo Stadium',
    eventDescription: 'Join us for a night of music and fun!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://www.newswire.lk/wp-content/uploads/2021/08/WhatsApp-Image-2021-08-11-at-10.23.41.jpeg",
    title: 'Cultural Fusion Fiesta',
    description: 'A feast of music and culture from around the world!',
    tax: 45,
    type: 'Cultural Festival',
    distance: 1.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Cultural Fusion Fiesta',
    eventDate: '2023-11-8',
    eventTime: '18:30',
    eventVenue: 'Colombo Arena',
    eventDescription: 'Explore diverse cultures through music!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004950.jpg",
    title: 'Health and Wellness Expo',
    description: 'Discover a healthier, happier you!',
    tax: 30,
    type: 'Health and Wellness',
    distance: 2.0,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Health and Wellness Expo',
    eventDate: '2023-11-8',
    eventTime: '10:00',
    eventVenue: 'Wellness Center',
    eventDescription: 'A day of wellness and self-care!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjGkTCYx9EZDoTYOcJfvuRjgsfMMH-SAd4ug&usqp=CAU",
    title: 'Extreme Sports Showcase',
    description:
        'Watch extreme sports enthusiasts perform breathtaking stunts!',
    tax: 20,
    type: 'Extreme Sports Exhibition',
    distance: 2.2,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Extreme Sports Showcase',
    eventDate: '2023-11-8',
    eventTime: '15:30',
    eventVenue: 'Adrenaline Park',
    eventDescription: 'Witness thrilling stunts and adrenaline-pumping action!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl: "https://decibel.lk/assets/2022/12/Guy-J-Live-In-Sri-Lanka.jpg",
    title: 'Jazz & Blues Night',
    description: 'Get lost in the soulful tunes of jazz and blues!',
    tax: 15,
    type: 'Music Concert',
    distance: 0.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Jazz & Blues Night',
    eventDate: '2023-11-8',
    eventTime: '20:00',
    eventVenue: 'Jazz Lounge',
    eventDescription: 'An evening of smooth jazz and blues melodies!',
     artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
];

final discoverUpComingEventImages = <Discover>[
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004413.jpg",
    title: 'Colombo Groove Fest',
    description: 'Get ready to groove to the best live music in Colombo!',
    tax: 15,
    type: 'Music Concert',
    distance: 2.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Colombo Groove Fest',
    eventDate: '2023-11-15',
    eventTime: '18:30',
    eventVenue: 'Colombo Arena',
    eventDescription: 'Dance the night away to live music!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004821.jpg",
    title: 'Rock the Pearl Stadium',
    description: 'A rock concert that will blow your mind!',
    tax: 45,
    type: 'Rock Concert',
    distance: 1.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Rock the Pearl Stadium',
    eventDate: '2023-11-12',
    eventTime: '19:30',
    eventVenue: 'Pearl Stadium',
    eventDescription: 'Rock out with legendary rock bands!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://lk-aps.bmscdn.com/events/moviecard/inception-23-et00005059-2023-9-4-t-16-31-59.jpg",
    title: 'Sri Lankan Fusion Beats',
    description:
        'An evening of fusion music that celebrates Sri Lankan culture.',
    tax: 30,
    type: 'Music Fusion Concert',
    distance: 2.0,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Sri Lankan Fusion Beats',
    eventDate: '2023-11-10',
    eventTime: '20:00',
    eventVenue: 'Fusion Center',
    eventDescription: 'A fusion of Sri Lankan musical traditions!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004740.jpg",
    title: 'Lanka Rhythm Carnival',
    description:
        'Experience the rhythm and dance of Sri Lanka like never before!',
    tax: 20,
    type: 'Dance and Music Concert',
    distance: 2.2,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Lanka Rhythm Carnival',
    eventDate: '2023-11-20',
    eventTime: '16:00',
    eventVenue: 'Rhythm Park',
    eventDescription: 'Dance to the vibrant rhythms of Sri Lanka!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004413.jpg",
    title: 'Jazz on the Beach',
    description:
        'Enjoy smooth jazz tunes on the beautiful Sri Lankan coastline.',
    tax: 15,
    type: 'Jazz Concert',
    distance: 0.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Jazz on the Beach',
    eventDate: '2023-11-5',
    eventTime: '17:30',
    eventVenue: 'Beachfront Stage',
    eventDescription: 'Relax and unwind with seaside jazz melodies!',
    artistLineup: [
      CarouselItem(
        imageUrl: 'Artist1ImageURL',
        name: 'Artist 1',
      ),
      CarouselItem(
        imageUrl: 'Artist2ImageURL',
        name: 'Artist 2',
      ),
      CarouselItem(
        imageUrl: 'Artist3ImageURL',
        name: 'Artist 3',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl: 'CarouselImage1URL',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl: 'CarouselImage2URL',
        name: 'Image 2',
      ),
    ],
  ),
];
