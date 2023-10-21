// ignore_for_file: constant_identifier_names

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

