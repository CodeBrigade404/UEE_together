import 'package:event_booking_app/models/discover_model.dart';

final discoverEventImages = <Discover>[
  Discover(
    ticketId: "TK67012",
    imageUrl:
        "https://mytickets.lk/contents/events/poster/Romantic%20new%20event%20banner%20123.jpg",
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
    eventLongDescription:
        'A Musical Evening for 100 HeatBeats Colombo Cultural Fest 2023 is a celebration of Sri Lankan culture and heritage, featuring traditional music, dance, and delicious local cuisine,Colombo Cultural Fest 2023 is a celebration of Sri Lankan culture and heritage, featuring traditional music, dance, and delicious local cuisine',
    artistLineup: [
      CarouselItem(
        imageUrl: "https://senakabatagoda.lk/assets/img/senakaImg01.webp",
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
    ticketId: "TK04512",
    imageUrl:
        "https://mytickets.lk/contents/events/poster/Event-Banner%20CB1.jpg",
    title: 'Celebrate the season in Colombo',
    description: 'A Musical Evening for 100 HeatBeats',
    tax: 10,
    type: 'Cultural Festival',
    distance: 10,
    date: "2023-11-15",
    location: 'Galle Face Green, Colombo, Sri Lanka',
    eventName: 'Colombo Cultural Fest 2023',
    eventDate: '2023-11-25',
    eventTime: '8:30 PM - 11:00 PM',
    eventVenue: 'Galle Face Green Stage',
    eventLongDescription:
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
    ticketId: "TK324512",
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
    eventLongDescription: 'Three Nada Live in Concert',
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
    ticketId: "TK0134512",
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
    eventLongDescription: 'Ada Hamuwemuda Api Vol 2.0',
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
    ticketId: "TK04512",
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
    eventLongDescription: 'Get lost in the soulful tunes!',
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
    ticketId: "TK0012",
    imageUrl:
        "https://mytickets.lk/contents/events/poster/Romantic%20new%20event%20banner%20123.jpg",
    title: 'Romantic Evening',
    description: 'Makes your evening more romantic.',
    tax: 2500,
    type: 'Indoor music concert',
    distance: 4.54,
    date: "2023-11-02",
    location: 'Holy Cross auditorium - Gampaha',
    eventName: 'Romantic Evening',
    eventDate: '2023-11-02',
    eventTime: '16:00',
    eventVenue: 'Holy Cross auditorium - Gampaha',
    eventLongDescription:
        'Experience an enchanting indoor music concert, Romantic Evening on November 2, 2023, at Holy Cross auditorium, Gampaha. Enjoy a night of love-infused melodies in a dreamy ambiance. Unforgettable music awaits!',
    artistLineup: [
      CarouselItem(
        imageUrl:
            "https://source.boomplaymusic.com/group10/M00/09/13/4c54a472a04d43bea4aa8fc092f53eea_464_464.jpg",
        name: 'Kasun Kalhara',
      ),
      CarouselItem(
        imageUrl:
            'https://yt3.googleusercontent.com/SULdpZrOJHvIseps9e0D_qJaEOsIyUSgDnSWXeNhl6mHbVVaQxLQsHR8yk5i-pB3kAwUuQ8DnA=s900-c-k-c0x00ffffff-no-rj',
        name: 'Nadeemal',
      ),
      CarouselItem(
        imageUrl:
            'https://viberatecdn.blob.core.windows.net/entity/artist/raini-charuka-goonatillake-ZwyJa',
        name: 'Rayani',
      ),
      CarouselItem(
        imageUrl: 'https://pbs.twimg.com/media/EfnDajuVoAAeRN6.jpg',
        name: 'Michelle',
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
    ticketId: "TK57012",
    imageUrl:
        "https://mytickets.lk/contents/events/poster/Event-Banner%20CB1.jpg",
    title: 'Celebrate the season event',
    description: 'A rock concert that will blow your mind!',
    tax: 6500,
    type: 'Rock Concert',
    distance: 11.51,
    date: "2023-11-08",
    location: 'Avendra Gardan Negombo, Sri Lanka',
    eventName: 'Celebrate the season event',
    eventDate: '2023-11-08',
    eventTime: '19:30',
    eventVenue: 'Avendra Gardan Negombo, Sri Lanka',
    eventLongDescription:
        'Discover an electrifying rock concert, Celebrate the Season Event at Avendra Gardan Negombo, Sri Lanka, on November 8, 2023. With legendary bands like Jaya Sri, Ranjan, The Gypsies, and Nilanthi Dias in the lineup, it promises an unforgettable night of music and entertainment. Dont miss it!',
    artistLineup: [
      CarouselItem(
        imageUrl:
            'https://island.lk/wp-content/uploads/2023/07/jayasri-twins.jpg',
        name: 'Jaya Sri',
      ),
      CarouselItem(
        imageUrl:
            'https://ceylonnews24.net/wp-content/uploads/2021/09/ranjan.jpg',
        name: 'Ranjan',
      ),
      CarouselItem(
        imageUrl: 'https://www.sundaytimes.lk/220206/uploads/2.jpg',
        name: 'The Gypsies',
      ),
      CarouselItem(
        imageUrl:
            'https://2.bp.blogspot.com/_I15Aim-FLts/TKrjveRAc3I/AAAAAAAAHbI/KXgE-Kt0bGI/s1600/019656094.jpg',
        name: 'Nilanthi Dias',
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
    ticketId: "TK970121",
    imageUrl:
        "https://lk-aps.bmscdn.com/events/moviecard/inception-23-et00005059-2023-9-4-t-16-31-59.jpg",
    title: 'Sri Lankan Fusion Beats',
    description: 'A Musical Evening for 100 HeatBeats',
    tax: 2000,
    type: 'Music Fusion Concert',
    distance: 2.0,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Sri Lankan Fusion Beats',
    eventDate: '2023-11-10',
    eventTime: '20:00',
    eventVenue: 'Fusion Center',
    eventLongDescription: 'A fusion of Sri Lankan musical traditions!',
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
    ticketId: "TK0234",
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004740.jpg",
    title: 'Lanka Rhythm Carnival',
    description: 'A Musical Evening for 100 HeatBeats',
    tax: 2500,
    type: 'Dance and Music Concert',
    distance: 2.2,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Lanka Rhythm Carnival',
    eventDate: '2023-11-20',
    eventTime: '16:00',
    eventVenue: 'Rhythm Park',
    eventLongDescription: 'Dance to the vibrant rhythms of Sri Lanka!',
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
    ticketId: "TK13012",
    imageUrl: "https://lk-aps.bmscdn.com/events/eventlisting/ET00004413.jpg",
    title: 'Jazz on the Beach',
    description: 'Enjoy smooth jazz tunes',
    tax: 2500,
    type: 'Jazz Concert',
    distance: 0.5,
    date: "2023-11-8",
    location: 'Colombo, Sri Lanka',
    eventName: 'Jazz on the Beach',
    eventDate: '2023-11-5',
    eventTime: '17:30',
    eventVenue: 'Beachfront Stage',
    eventLongDescription: 'Relax and unwind with seaside jazz melodies!',
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
