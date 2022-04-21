import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent[400],
            centerTitle: true,
            title: Text(
              'Ask me anything',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 0;

  void changeBallNumber() {
    setState(() {
      magicBallNumber = Random().nextInt(5) + 1;
      print('magicBallNumber = $magicBallNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              changeBallNumber();
            },
            child: Image.asset(
              'images/ball$magicBallNumber.png',
              // width: 350,
            ),
          ),
        ],
      ),
    );
  }
}
