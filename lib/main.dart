// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_hotel.dart';
import 'package:myapp/screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelDetailScreen(),
      // home: MyHomePage(),
      routes: {
        HotelDetailScreen.routeName: (ctx) => HotelDetailScreen(),
      },
    );
  }
}
