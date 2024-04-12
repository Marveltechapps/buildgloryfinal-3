import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/about.dart';
import 'View/agentpage.dart';
import 'View/apartmentinfo.dart';
import 'View/contactpage.dart';
import 'View/detailedpage.dart';
import 'View/exchangepage.dart';
import 'View/homepage.dart';
import 'View/buypage.dart';
import 'View/sellpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Built Glory',
      theme: ThemeData(
        textTheme: GoogleFonts.kumbhSansTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const BuildHomepage(),
        '/Buy': (context) => const BuyView(),
        '/Sell': (context) => const SellView(),
        '/Exchange': (context) => const ExchangeView(),
        '/Agent': (context) => const AgentView(),
        '/Contact Us': (context) => const Contactpage(),
        '/Apartmentinfo': (context) => const ApartmentPage(),
        '/DetailedPage': (context) => const DetailedPage(),
        '/About': (context) => const About(),

        // Add more routes as needed
      },
      home: const BuildHomepage(),
    );
  }
}
