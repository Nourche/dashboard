import 'package:dashboard/models/room.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final List<Room> rooms = [
    Room(roomId: '101', capacity: 2, isAvailable: true),
    Room(roomId: '102', capacity: 4, isAvailable: false),
    Room(roomId: '103', capacity: 3, isAvailable: true),
    Room(roomId: '104', capacity: 2, isAvailable: true),
    Room(roomId: '105', capacity: 1, isAvailable: false),
    Room(roomId: '106', capacity: 1, isAvailable: true),
    Room(roomId: '107', capacity: 3, isAvailable: true),
    Room(roomId: '108', capacity: 3, isAvailable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms'),
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];

          return Card(
            elevation: 3,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Room ${room.roomId}'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Capacity: ${room.capacity} people'),
                      Text(
                        'Availability: ${room.isAvailable ? 'Available' : 'Not Available'}',
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor:
                        room.isAvailable ? Colors.green : Colors.red,
                    radius: 10.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
