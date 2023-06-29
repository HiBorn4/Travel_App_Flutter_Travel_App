// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String imgUrl;
  final String hotelName;
  final String location;
  final double rating;
  final int price;

  const TravelCard({
    Key? key,
    required this.imgUrl,
    required this.hotelName,
    required this.location,
    required this.rating,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 22.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 0.0,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
            ),
          ),
          width: 175.0,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            color: Colors.grey,
                            size: 18,
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$$price/",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "night",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Text(
                            rating.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
