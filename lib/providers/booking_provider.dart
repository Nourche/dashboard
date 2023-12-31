import 'package:flutter/material.dart';

import '../models/booking.dart';

class BookingProvider with ChangeNotifier {
  List<Booking> bookings = [];

  void addBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }

  void checkRoom(String id) {
    if (bookings.any((booking) => booking.roomId == id)) {
      print('Booking impossible');
    } else
      print('room is available');
  }
}
