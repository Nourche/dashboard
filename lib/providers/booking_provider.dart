import 'package:flutter/material.dart';

import '../models/booking.dart';

class BookingProvider with ChangeNotifier {
  List<Booking> bookings = [];

  void addBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }
}
