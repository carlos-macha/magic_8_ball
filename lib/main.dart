import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(magic8Ball());
}

class magic8Ball extends StatelessWidget {
  const magic8Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Color.fromARGB(255, 23, 107, 177),
        ),
        body: magic8BallPage(),
      ),
    );
  }
}

class magic8BallPage extends StatefulWidget {
  const magic8BallPage({super.key});

  @override
  State<magic8BallPage> createState() => _magic8BallPageState();
}

class _magic8BallPageState extends State<magic8BallPage> {
  int ballValue = 2;
  
  void ballNumber() {
    setState(() {
      ballValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            ballNumber();
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('lib/images/ball$ballValue.png'),
          ),
        ),
      ),
    );
  }
}
