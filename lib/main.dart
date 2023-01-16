import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        color: Colors.blue,
        child: BallPage(),
      ),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int buttonState = 1;

  void setBallState(){
    setState((){
      buttonState=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        child: FlatButton(
          child: Image(
            image: AssetImage('images/ball$buttonState.png'),
          ),
          onPressed: () {
            setBallState();
          },
        )
    );
  }
}



