import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: (){
            final newNumber = Random().nextInt(10) + 1;
            setState(() {
              number = newNumber;
            });
          },
          child: Image.asset('assets/img/$number.jpeg'),
        ),
      ),
    );
  }
}
