import 'package:dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/booking_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BookingProvider()),
        ],
        child: Dashboard(),
      ),
    );
  }
}
