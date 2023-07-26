import 'dart:io';

void main(){
  // declaration of the number to be checked

  // int number = 13;
  int number;
  print('Please enter a number: ');
  number = int.parse(stdin.readLineSync()!);

  // if (number.isEven) {
  //   print("$number is an even number!");
  // } else {
  //   print("$number is an odd number!");
  // }
  
  print(number.isEven ? "Is even.":"Is odd.");
  
  // if (number % 2 == 0){
  //   print('The number is even');
  // }
  // else{
  //   print("The number is odd!");
  // }

}