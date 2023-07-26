// an approach where the user defines the list at the terminal
import 'dart:io';
void main(){
  // variables to be used
  var list = [];
  var newList =[];
  int listLength, max_value = 0;

  print("How many elements should the list have? ");
  listLength = int.parse(stdin.readLineSync()!);  // determine the list length
  
  print("Please insert the values now.");  // populate the list
  while (list.length < listLength){
    var input = int.parse(stdin.readLineSync()!);  
    list.add(input);
  }
  
  for (var i = 0; i < list.length; i++){  // iterate the list
    if(list[i].isEven){
      newList.add(list[i]);  // if the value is even, add it to a special list
    }
    if (list[i] > max_value){
      max_value = list[i];  // find the highest value in the list
    } 
  }
  print("All the even numbers are: $newList.");
  print("The highest number in the list is: $max_value.");
}