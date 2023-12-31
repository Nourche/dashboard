// body: BookingList(),
import 'package:flutter/material.dart';

import '../widgets/booking_list.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
      ),
      body: BookingList(),
    );
  }
}
