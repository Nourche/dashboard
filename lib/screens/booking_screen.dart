import 'package:dashboard/widgets/booking_list.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hotel Bookings',
          style: TextStyle(

          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: const BookingList(),
      ),
    );
  }
}
