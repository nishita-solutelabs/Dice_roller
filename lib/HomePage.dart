import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage diceImage1;
  AssetImage diceImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage1 = one;
      diceImage2 = one;
    });
  }

  void rollDice() {
    int random1 = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));

    setState(() {
      switch (random1) {
        case 1:
          diceImage1 = one;
          break;
        case 2:
          diceImage1 = two;
          break;
        case 3:
          diceImage1 = three;
          break;
        case 4:
          diceImage1 = four;
          break;
        case 5:
          diceImage1 = five;
          break;
        case 6:
          diceImage1 = six;
          break;
      }
      switch (random2) {
        case 1:
          diceImage2 = one;
          break;
        case 2:
          diceImage2 = two;
          break;
        case 3:
          diceImage2 = three;
          break;
        case 4:
          diceImage2 = four;
          break;
        case 5:
          diceImage2 = five;
          break;
        case 6:
          diceImage2 = six;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dice Roller'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 170.0,
                    width: 170.0,
                    image: diceImage1,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Image(
                    height: 170.0,
                    width: 170.0,
                    image: diceImage2,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(25),
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                color: Colors.yellow,
                child: Text(
                  'Roll the Dice',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                onPressed: rollDice,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ],
          ),
        ));
  }
}
