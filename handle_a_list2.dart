// an approach where the user defines the list at the terminal
import 'dart:io';
void main(){
  // // variables to be used
  // var list = [];
  // var newList =[];
  // int listLength, max_value = 0;

  // print("How many elements should the list have? ");
  // listLength = int.parse(stdin.readLineSync()!);  // determine the list length
  
  // print("Please insert the values now.");  // populate the list
  // while (list.length < listLength){
  //   var input = int.parse(stdin.readLineSync()!);  
  //   list.add(input);
  // }
  
  // for (var i = 0; i < list.length; i++){  // iterate the list
  //   if(list[i].isEven){
  //     newList.add(list[i]);  // if the value is even, add it to a special list
  //   }
  //   if (list[i] > max_value){
  //     max_value = list[i];  // find the highest value in the list
  //   } 
  // }
  // print("All the even numbers are: $newList.");
  // print("The highest number in the list is: $max_value.");


  // define a method to do the task
  List<int> listHandler(){
    List<int> input_list = [];
    print("Input the list elements. When done, type 'exit' to stop!");

    while(true){
      String input = stdin.readLineSync()!;
      if( input.toLowerCase() == 'exit'){
        break;
      }

      input_list.add(int.parse(input));
    }
    return(input_list);
  }

  List<int> findAllEvens(List<int> input){
    return input.where((number) => number % 2 == 0).toList(); // not totally understood it but
    // 'where' is a method which filters the given list
    // '(number) => number % 2 == 0' - verifies if the given number from the list is even
    // if yes, .toList() will return the number into a brand new list
  }

  int findHighestValueOfAList(List<int> input){
    return input.reduce((value, element) => value > element ? value : element);
    // the '.reduce' method will have 'value' as the highest found value so far
    // and it will compare it with element - each elem of the list
    // when the 'element' is higher than the 'value', it is replaced with
    // the new value
  }


// call the methods to get the result

  List<int> test_list = listHandler();  // create a new list via terminal
  // print(test_list.runtimeType);
  List<int> evenNumbers = findAllEvens(test_list);  // create a new list which will have all the even numbers of the intial list
  int highestValue = findHighestValueOfAList(test_list);  // create a variable and store in it the highest value of the initial list
  print("Original list is: $test_list.");
  print("Even numbers are: $evenNumbers.");
  print("The highest value of the list is: $highestValue");

}