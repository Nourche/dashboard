import 'package:dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/booking_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BookingsProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepPurple[700],
          primaryColorLight: Colors.white,
        ),
        home: const Dashboard(),
      ),
    );
  }
}
