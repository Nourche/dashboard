import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/booking_provider.dart';

class BookingList extends StatelessWidget {

  const BookingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookingsProvider>(
      builder: (context, provider, widget) {
        final bookings = provider.bookings;
        return ListView.builder(
          itemCount: bookings.length,
          itemBuilder: (context, index) {
            final booking = bookings[index];
            return ListTile(
              title: Text(booking.guestName),
              subtitle: Text('${booking.checkInDate} - ${booking.checkOutDate}'),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline, size: 25,),
                onPressed: () {
                  Provider.of<BookingsProvider>(context).removeBooking(booking);
                },
              ),
            );
          },
        );
      },
    );
  }
}
