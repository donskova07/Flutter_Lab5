import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();

class randomflag extends StatefulWidget{
  const randomflag({super.key});

  @override
  State<StatefulWidget> createState() {
    return _randomflagstate();
  }
}

class _randomflagstate extends State<randomflag> {
  var currentflag = 2;

  void Flagg() {
    setState((){
    currentflag = randomizer.nextInt(5) + 1;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/flag$currentflag.png',
                width: 400,
                ),
                TextButton(
                  onPressed: Flagg, 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  child: Text("Следующий флаг")),
            ],
          );
  }
}