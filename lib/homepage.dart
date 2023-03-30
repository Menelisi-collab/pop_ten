import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pop_ten/custom_square.dart';
import 'package:pop_ten/custom_square_list.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberInRow = 11;
  int numberOfSquares = numberInRow * 11;

  get timer => null;
  @override
  initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 10), (timer) {
      customSquares.shuffle();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }



  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Scaffold(
          backgroundColor: Colors.purple,
          body: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: Expanded(
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: customSquares.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: numberInRow),
                        itemBuilder: (BuildContext context, int index) {

                          final currentNumber = customSquares[index];

                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              color: Colors.white,
                              child: Center(
                                child: CustomSquare(value: currentNumber),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Expanded(
                child: ClipRect(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(duration: const Duration(seconds: 20),
                        child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_9zjzjv8t.json'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}