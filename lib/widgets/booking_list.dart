import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/booking_provider.dart';

class BookingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bookings = context.watch<BookingProvider>().bookings;
    print(bookings);
    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        var booking = bookings[index];
        return Card(
          elevation: 3,
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(booking.guestName),
            subtitle: Text('${booking.checkInDate} - ${booking.checkOutDate}'),
          ),
        );
      },
    );
  }
}
