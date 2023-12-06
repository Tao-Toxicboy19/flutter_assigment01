// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_assigment01/widgets/dogs.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayut"),
        backgroundColor: Colors.amber.shade500,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Text(
                "My Dog Application",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Create by Prayut"),
              SizedBox(
                height: 10,
              ),
              Dogs(dogName: "Beagle", nickName: "Prayut"),
              Dogs(dogName: "Doge", nickName: "Elon"),
              Dogs(dogName: "Omen", nickName: "TS"),
              Dogs(dogName: "Node", nickName: "JS"),
            ],
          ),
        ),
      ),
    );
  }
}
