// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget offerCard(String title, IconData icon, bool isClicked) {
  return Card(
    margin: EdgeInsets.only(right: 22.0, bottom: 20),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    elevation: 9.0,
    child: Material(
      child: Container(
        decoration: BoxDecoration(
          color: isClicked ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(1),

              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(
                  0, 5), // Adjust the offset for desired shadow direction
            ),
          ],
        ),
        child: InkWell(
          // onTap: handleClick,
          child: SizedBox(
            width: 85.0,
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 35,
                    color: isClicked ? Colors.white : Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: isClicked ? Colors.white : Colors.black,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
