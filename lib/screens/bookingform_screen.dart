import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/booking.dart';
import '../providers/booking_provider.dart';

class BookingFormScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController checkInController = TextEditingController();
  final TextEditingController checkOutController = TextEditingController();
  final TextEditingController roomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: checkInController,
              decoration: InputDecoration(labelText: 'Check-In Date'),
            ),
            TextField(
              controller: checkOutController,
              decoration: InputDecoration(labelText: 'Check-Out Date'),
            ),
            TextField(
              controller: roomController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Room Number'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                context.read<BookingProvider>().checkRoom(roomController.text);
                context.read<BookingProvider>().addBooking(
                      Booking(
                        guestName: nameController.text,
                        checkInDate: checkInController.text,
                        checkOutDate: checkOutController.text,
                        roomId: int.parse(roomController.text),
                      ),
                    );

                Navigator.pop(context);
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
