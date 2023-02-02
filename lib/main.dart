import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {

  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int image = 1;
  @override
  Widget build(BuildContext context) {
    void cha(){
      setState(() {
        image = Random().nextInt(5) +1;
      });
    }
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Ask Me Anythng'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: TextButton(
            onPressed: () {
              cha();
              print('image= $image' );
            },
            child: Image.asset('images/ball$image.png'),
          ),
        ),
      ),
    );
  }
}

