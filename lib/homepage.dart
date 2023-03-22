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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
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

          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(duration: const Duration(seconds: 20),
                  child: Lottie.network('https://assets1.lottiefiles.com/temp/lf20_At0drg.json',),
                  ),
                  AnimatedContainer(duration: const Duration(seconds: 20),
                    child: Lottie.network('https://assets1.lottiefiles.com/private_files/lf30_t0igqye8.json',),
                  ),
                  AnimatedContainer(duration: const Duration(seconds: 20),
                    child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_es53gnxq.json',),
                  ),
                  AnimatedContainer(duration: const Duration(seconds: 20),
              child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_oCJ11v.json',),)
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Text('Score: ', style: TextStyle(color: Colors.white, fontSize: 30, height: 2),),
            ),
          )
        ],
      ),
    );
  }
}
