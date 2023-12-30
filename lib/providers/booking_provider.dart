import 'package:flutter/material.dart';

import '../models/booking.dart';

class BookingsProvider with ChangeNotifier {
  List<Booking> bookings = [];

  void addBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }

  void removeBooking(Booking booking) {
    bookings.remove(booking);
    notifyListeners();
  }

}