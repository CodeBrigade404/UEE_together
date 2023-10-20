enum BookingStatus {
  Bookings,
  History,
}

class Booking {
  final String time;
  final String eventName;
  final String venueName;
  final BookingStatus status;
  final DateTime date;
  final String bookingId; 
  final List<String>? images; 

  Booking({
    required this.time,
    required this.eventName,
    required this.venueName,
    required this.status,
    required this.date,
    required this.bookingId,
    this.images, 
  });
}


List<Booking> sampleBookings = [
  Booking(
    time: '10:00 PM',
    eventName: 'Event 1',
    venueName: 'Venue A',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '12345',
    images: ['image1.jpg', 'image2.jpg'],
  ),
  Booking(
    time: '2:15 PM',
    eventName: 'Event 3',
    venueName: 'Venue C',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '67890',
    images: ['image3.jpg'],
  ),
  Booking(
    time: '11:30 AM',
    eventName: 'Event 2',
    venueName: 'Venue B',
    status: BookingStatus.Bookings,
    date: DateTime.now(),
    bookingId: '54321',
  ),
  Booking(
    time: '2:15 PM',
    eventName: 'Event 3',
    venueName: 'Venue C',
    status: BookingStatus.Bookings,
    date: DateTime.now(),
    bookingId: '98765',
    images: ['image4.jpg'],
  ),
  Booking(
    time: '10:00 PM',
    eventName: 'Event 1',
    venueName: 'Venue A',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '24680',
  ),
  Booking(
    time: '2:15 PM',
    eventName: 'Event 3',
    venueName: 'Venue C',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '13579',
    images: ['image5.jpg', 'image6.jpg'],
  ),
  Booking(
    time: '10:00 PM',
    eventName: 'Event 1',
    venueName: 'Venue A',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '11223',
  ),
  Booking(
    time: '2:15 PM',
    eventName: 'Event 3',
    venueName: 'Venue C',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '45678',
  ),
  Booking(
    time: '10:00 PM',
    eventName: 'Event 1',
    venueName: 'Venue A',
    status: BookingStatus.History,
    date: DateTime.now(),
    bookingId: '90909',
  ),
  Booking(
    time: '11:30 AM',
    eventName: 'Event 2',
    venueName: 'Venue B',
    status: BookingStatus.Bookings,
    date: DateTime.now(),
    bookingId: '12121',
    images: ['image7.jpg', 'image7.jpg', 'image7.jpg'],
  ),
];
