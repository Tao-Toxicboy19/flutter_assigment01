// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_assigment01/screens/second_page.dart';

class Dogs extends StatelessWidget {
  final String dogName;
  final String nickName;

  const Dogs({Key? key, required this.dogName, required this.nickName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber.shade100, borderRadius: BorderRadius.circular(7)),
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dogName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange.shade900,
                ),
              ),
              Text(
                nickName,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.deepOrange.shade900,
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary:
                  Colors.amber.shade100, // Change this color to the desired one
            ),
            child: Text(
              "ดูข้อมูลเพิ่มเติม",
              style: TextStyle(color: Colors.amber.shade900),
            ),
          )
        ],
      ),
    );
  }
}
