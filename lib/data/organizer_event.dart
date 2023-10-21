import 'package:event_booking_app/models/organizer_model.dart';

final eventList = [
  const OrganizerEvent(
    title: "Bentota Beach Fiesta",
    type: "indoor",
    image: "https://countryconcert.com/assets/images/cc21-800-3-dsc8559.jpg",
    description:
        "Beach party is a party held on a beach. Beach parties are popular in the summer where the daylight hours are longer, and it is warm enough to go swimming in the sea. A beach party is an excellent opportunity for people to engage in socializing activities with their friends, relatives, and colleagues.",
    location: "Malwatta, Colombo",
    date: "Mon, Dec 24 : 18.00- 23.00 PM",
    price: 200,
    quantity: 500,
  ),
  const OrganizerEvent(
    title: "Gampaha Music Festival",
    type: "outdoor",
    image:
        "https://img.freepik.com/free-photo/beautiful-shot-live-concert-performance-with-yellow-light-show-big-crowd-cheering_181624-55905.jpg",
    description:
        "Join us for a music festival with live performances from top artists. Enjoy a day filled with music, food, and fun.",
    location: "Gampaha",
    date: "Mon, Dec 24 : 18.00- 23.00 PM",
    price: 300.50,
    quantity: 800,
  ),
  const OrganizerEvent(
    title: "Jazz in the Park",
    type: "outdoor",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROCIFn9YnSwQ-Bd3LAXhkI93_qZsGjLoLURg&usqp=CAU",
    description:
        "An evening of jazz music in the beautiful park. Bring your picnic blankets and enjoy the tunes under the stars.",
    location: "City Park, Colombo",
    date: "Sun, Feb 5 : 17.00- 20.00 PM",
    price: 150.75,
    quantity: 300,
  ),
  const OrganizerEvent(
    title: "Rock n' Roll Night",
    type: "indoor",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMVDaZL1ARbITHIZGyWKSsT1AqsPR-zwiVzw&usqp=CAU",
    description:
        "A high-energy rock concert featuring your favorite bands. Get ready to headbang and have a blast.",
    location: "Rock Arena, Kandy",
    date: "Fri, Mar 10 : 19.00- 23.00 PM",
    price: 250.99,
    quantity: 400,
  ),
  const OrganizerEvent(
    title: "Classical Symphony Showcase",
    type: "indoor",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHID74VsqjaOlUh9L5cu95LfZOqJilvxyLZw&usqp=CAU",
    description:
        "An elegant evening of classical music performed by a symphony orchestra. Experience the beauty of classical compositions.",
    location: "Symphony Hall, Colombo",
    date: "Sat, Apr 22 : 19.30- 21.30 PM",
    price: 175.25,
    quantity: 250,
  ),
];
