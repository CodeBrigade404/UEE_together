class Discover {
  final String imageUrl;
  final String title;
  final String description;
  final int tax;
  final String type;
  final double distance;
  final String date;
  final String location;

  Discover({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.tax,
    required this.type,
    required this.distance,
    required this.date,
    required this.location,
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
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl:
        "https://www.newswire.lk/wp-content/uploads/2021/08/WhatsApp-Image-2021-08-11-at-10.23.41.jpeg",
    title: 'Cultural Fusion Fiesta',
    description: 'A feast of music and culture from around the world!',
    tax: 45,
    type: 'Cultural Festival',
    distance: 1.5,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004950.jpg",
    title: 'Health and Wellness Expo',
    description: 'Discover a healthier, happier you!',
    tax: 30,
    type: 'Health and Wellness',
    distance: 2.0,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
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
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl: "https://decibel.lk/assets/2022/12/Guy-J-Live-In-Sri-Lanka.jpg",
    title: 'Jazz & Blues Night',
    description: 'Get lost in the soulful tunes of jazz and blues!',
    tax: 15,
    type: 'Music Concert',
    distance: 0.5,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
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
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004821.jpg",
    title: 'Rock the Pearl Stadium',
    description: 'A rock concert that will blow your mind!',
    tax: 45,
    type: 'Rock Concert',
    distance: 1.5,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
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
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004740.jpg",
    title: 'Lanka Rhythm Carnival',
    description:
        'Experience the rhythm and dance of Sri Lanka like never before!',
    tax: 20,
    type: 'Dance and Music Concert',
    distance: 2.2,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
  Discover(
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004413.jpg",
    title: 'Jazz on the Beach',
    description:
        'Enjoy smooth jazz tunes on the beautiful Sri Lankan coastline.',
    tax: 15,
    type: 'Jazz Concert',
    distance: 0.5,
    date: "2023-11-8", // Add the date
    location: 'Colombo, Sri Lanka', // Add the location
  ),
];
