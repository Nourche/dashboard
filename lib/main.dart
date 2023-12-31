import 'package:dashboard/providers/users_provider.dart';
import 'package:dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/booking_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookingProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF3627aa),
            //brightness: Brightness.dark,
          ),

          // textTheme: TextTheme(
          //   displayLarge: const TextStyle(
          //     fontSize: 72,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   // ···
          //   titleLarge: GoogleFonts.oswald(
          //     fontSize: 30,
          //     fontStyle: FontStyle.italic,
          //   ),
          //   bodyMedium: GoogleFonts.merriweather(),
          //   displaySmall: GoogleFonts.pacifico(),
          // ),
        ),
        home: Dashboard());
  }
}
