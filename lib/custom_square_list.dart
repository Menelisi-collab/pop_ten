import 'dart:math';

import 'package:pop_ten/custom_square.dart';

List<int> customSquares = List.generate(101, (index) => index, growable:  false)..shuffle();

var i=0;



// create function to populate customSquares
// void generateRandomNumber() {
//   // generate random number
//   final int currentRandomNumber = Random().nextInt(121);
//
//   // feed number to custom square
//   final CustomSquare theCustomSquare = CustomSquare(value: currentRandomNumber);
//
//   // add custom square to list customSquares
//   customSquares.add(theCustomSquare);
//
// }

// loop 120 times, calling generateRandomNumber function each time
void loopGenerator(){
  while (1 <=120){
    print(i);
    i ++;
  }

}



// feed the customSquares to Gridview.builder