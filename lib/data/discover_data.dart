import 'package:event_booking_app/models/discover_model.dart';

final discoverEventImages = <Discover>[
  Discover(
    imageUrl: "https://www.newswire.lk/wp-content/uploads/2022/09/Sahan.jpg",
    title: 'Hardanurawa',
    description: 'A Musical Evening for 100 HeatBeats',
    tax: 15,
    type: 'Music Festival',
    distance: 2.5,
    date: "2023-10-21",
    location: 'MUSAEUS COLLEGE AUDITORIUM,COLOMBO',
    eventName: 'Hardanurawa',
    eventDate: '2023-10-21',
    eventTime: '19:00',
    eventVenue: 'MUSAEUS COLLEGE AUDITORIUM,COLOMBO',
    eventDescription: 'A Musical Evening for 100 HeatBeats',
    artistLineup: [
      CarouselItem(
        imageUrl:
            'data:image/jpeg;base64,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',
        name: 'ROOKANTHA',
      ),
      CarouselItem(
        imageUrl: 'https://senakabatagoda.lk/assets/img/senakaImg01.webp',
        name: 'SENAKA',
      ),
      CarouselItem(
        imageUrl:
            'https://viberatecdn.blob.core.windows.net/entity/artist/raini-charuka-goonatillake-ZwyJa',
        name: 'RAINI',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl:
            'https://mytickets.lk/contents/events/poster/hardanurawaya%20event.jpg',
        name: 'Image 1',
      ),
      CarouselItem(
        imageUrl:
            'https://senakabatagoda.lk/upcoming_events/Hardanurawa_650d2d0e76e24.jpeg',
        name: 'Image 2',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://mytickets.lk/contents/events/poster/Event-Banner%20CB1.jpg",
    title: 'Celebrate the season in Colombo',
    description: 'Join us for a cultural extravaganza in the heart of Colombo!',
    tax: 10,
    type: 'Cultural Festival',
    distance: 10,
    date: "2023-11-15",
    location: 'Galle Face Green, Colombo, Sri Lanka',
    eventName: 'Colombo Cultural Fest 2023',
    eventDate: '2023-11-25',
    eventTime: '8:30 PM - 11:00 PM',
    eventVenue: 'Galle Face Green Stage',
    eventDescription:
        'Colombo Cultural Fest 2023 is a celebration of Sri Lankan culture and heritage, featuring traditional music, dance, and delicious local cuisine.',
    artistLineup: [
      CarouselItem(
        imageUrl: 'https://english.theleader.lk/images/rreeded.jpg',
        name: 'RANJAN RAMANAYAKE',
      ),
      CarouselItem(
        imageUrl:
            'https://i1.sndcdn.com/artworks-GVXaihm1PTPztB2f-GuNj9g-t500x500.jpg',
        name: 'JAYA SRI',
      ),
      CarouselItem(
        imageUrl:
            'https://2.bp.blogspot.com/_I15Aim-FLts/TKrjveRAc3I/AAAAAAAAHbI/KXgE-Kt0bGI/s1600/019656094.jpg',
        name: 'NILANTHI DIAS',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl:
            'https://mytickets.lk/contents/events/poster/Event-Banner%20CB1.jpg',
        name: 'Traditional Dance Performance',
      ),
      CarouselItem(
        imageUrl:
            'https://e7.pngegg.com/pngimages/366/440/png-clipart-drawing-gift-the-willows-salon-day-spa-zazzle-liturgical-dance-others-public-relations-friendship.png',
        name: 'Street Food Stalls',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://mytickets.lk/contents/events/poster/THREE%20NADA%20EVENT%20BANNER.jpg",
    title: 'Three Nada',
    description: 'Three Nada Live in Concert',
    tax: 30,
    type: 'Musical Theatre',
    distance: 2.0,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Musical Theatre',
    eventDate: '2023-11-22',
    eventTime: '18:00',
    eventVenue: 'National Youth Center Maharagama',
    eventDescription: 'Three Nada Live in Concert',
    artistLineup: [
      CarouselItem(
        imageUrl:
            'https://i1.sndcdn.com/artworks-000368686644-9a4xni-t500x500.jpg',
        name: 'Shashika Nisansala',
      ),
      CarouselItem(
        imageUrl:
            'data:image/jpeg;base64,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',
        name: 'Kasun Kalhara',
      ),
      CarouselItem(
        imageUrl:
            'https://i.scdn.co/image/ab6761610000e5eb81936b721481db8287564ef1',
        name: 'Ruwan Hettiarachchi',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl:
            'https://mytickets.lk/contents/events/poster/THREE%20NADA%20EVENT%20BANNER.jpg',
        name: 'Image 1',
      ),
      CarouselItem(
        name: 'CarouselImage2URL',
        imageUrl:
            'https://e7.pngegg.com/pngimages/366/440/png-clipart-drawing-gift-the-willows-salon-day-spa-zazzle-liturgical-dance-others-public-relations-friendship.png',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://mytickets.lk/contents/events/poster/ada%20hamu%20wemuda%20new%20EVENT%20VOL%2002.jpg",
    title: 'Ada Hamuwemuda Api Vol 2.0',
    description: 'Ada Hamuwemuda Api Vol 2.0',
    tax: 20,
    type: 'Jazz Concert',
    distance: 2.2,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Ada Hamuwemuda Api Vol 2.0',
    eventDate: '2023-11-8',
    eventTime: '20:00',
    eventVenue: 'Cinnomon LakeSide Outdoor',
    eventDescription: 'Ada Hamuwemuda Api Vol 2.0',
    artistLineup: [
      CarouselItem(
        imageUrl: 'https://senakabatagoda.lk/assets/img/senakaImg01.webp',
        name: 'SENAKA',
      ),
      CarouselItem(
        imageUrl:
            'https://i1.sndcdn.com/artworks-GVXaihm1PTPztB2f-GuNj9g-t500x500.jpg',
        name: 'JAYA SRI',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl:
            'https://mytickets.lk/contents/events/poster/ada%20hamu%20wemuda%20new%20EVENT%20VOL%2002.jpg',
        name: 'Image 1',
      ),
      CarouselItem(
        name: 'CarouselImage2URL',
        imageUrl:
            'https://e7.pngegg.com/pngimages/366/440/png-clipart-drawing-gift-the-willows-salon-day-spa-zazzle-liturgical-dance-others-public-relations-friendship.png',
      ),
    ],
  ),
  Discover(
    imageUrl:
        "https://archives1.dinamina.lk/sites/default/files/news/2020/12/29/Lalitha%20Sirisara.jpg",
    title: 'Lalitha Sira Sara',
    description: 'Get lost in the soulful tunes!',
    tax: 15,
    type: 'Musical Revues',
    distance: 5.5,
    date: "2023-11-25",
    location: 'Colombo, Sri Lanka',
    eventName: 'Jazz & Blues Night',
    eventDate: '2023-11-25',
    eventTime: '20:00',
    eventVenue: 'Nelum Pokuna',
    eventDescription: 'Get lost in the soulful tunes!',
    artistLineup: [
      CarouselItem(
        imageUrl:
            'data:image/jpeg;base64,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',
        name: 'Keerthi Pasquel',
      ),
      CarouselItem(
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Samitha_Mudunkotuwa.jpg/800px-Samitha_Mudunkotuwa.jpg',
        name: 'Samitha Mudunkotuwa',
      ),
    ],
    carouselItems: [
      CarouselItem(
        imageUrl:
            'https://archives1.dinamina.lk/sites/default/files/news/2020/12/29/Lalitha%20Sirisara.jpg',
        name: 'Image 1',
      ),
      CarouselItem(
        name: 'CarouselImage2URL',
        imageUrl:
            'https://e7.pngegg.com/pngimages/366/440/png-clipart-drawing-gift-the-willows-salon-day-spa-zazzle-liturgical-dance-others-public-relations-friendship.png',
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
