// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/widgets/hospitalities.dart';
import 'package:myapp/widgets/hotdeals.dart';

import '../widgets/travelcard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> urls = [
    "https://i.ytimg.com/vi/EllQfqlng4Q/maxresdefault.jpg",
    "https://static.barcelo.com/content/dam/bhg/master/es/hoteles/spain/andalucia/cadiz/royal-hideaway-sancti-petri-part-of-barcelo-hotel-group/main-photos/hotel/RHSANC_POOL_05.jpg",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/357194040.jpg?k=53738a170b156a69595b74b6ecbad4992578f21364d6b44cdfb67c1b517a1cb7&o=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: true,
            floating: true,
            title: _buildAppBar(),
            toolbarHeight: 120,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 140, // Set the desired height
              child: _buildHospitality(),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Where you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            Text(
              "wanna go?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(
                      0, 2), // Adjust the shadow position if needed
                ),
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 27,
              child: Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: 37,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Hotels",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                  ),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 280,
            child: _buildFeatured(),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Deals",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 230,
            child: _buildHotDeals(),
          ),
        ],
      ),
    );
  }

  _buildHospitality() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 135,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                hospitalityCard(
                  "Hotel",
                  Icons.apartment,
                  Colors.blue.shade400,
                  Colors.white,
                  Colors.white,
                ),
                hospitalityCard(
                  "Flight",
                  Icons.flight,
                  Colors.white,
                  Colors.grey,
                  Colors.black,
                ),
                hospitalityCard(
                  "Place",
                  Icons.place_outlined,
                  Colors.white,
                  Colors.grey,
                  Colors.black,
                ),
                hospitalityCard(
                  "Food",
                  Icons.fastfood_outlined,
                  Colors.white,
                  Colors.grey,
                  Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeatured() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(left: 17.0),
          child: SizedBox(
            height: 260.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TravelCard(
                  imgUrl: urls[0],
                  hotelName: 'Santorini',
                  location: "Greece",
                  rating: 4.9,
                  price: 488,
                ),
                TravelCard(
                  imgUrl: urls[1],
                  hotelName: "Hotel Royal",
                  location: "Spain",
                  rating: 4.8,
                  price: 280,
                ),
                TravelCard(
                  imgUrl: urls[2],
                  hotelName: "Safari Hotel",
                  location: "Africa",
                  rating: 5,
                  price: 580,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHotDeals() {
    return Padding(
      padding: EdgeInsets.only(left: 17.0),
      child: SizedBox(
        height: 230.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            hotDealsCard(urls[2], "BaLi Motel Vung Tau", "Indonesia", 5),
            hotDealsCard(urls[0], "Luxury Hotel", "Caroline", 3),
            hotDealsCard(urls[1], "Plaza Hotel", "Italy", 4),
          ],
        ),
      ),
    );
  }
}
