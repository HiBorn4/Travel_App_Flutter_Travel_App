// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget hotDealsCard(
    String imgUrl, String hotelName, String location, int rating) {
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
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          scale: 2.0,
        )),
        width: 390.0,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          "25% OFF",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "BaLi Motel Vung Tau",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Text(
                          " 4.9",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.place_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
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
                        Spacer(),
                        Text(
                          "\$580/",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "night",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
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
