// an approach where the list is defined in the code block
import 'dart:io';
void main(){
  // // variables to be used
  // var list = [];
  // var newList =[];
  // int max_value = 0;

  // for (int i = 1; i <= 18; i++){  // populate the list with values
  //   list.add(i);
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

// call the methods to get the result
  List<int> test_list = listHandler();
  print(test_list.runtimeType);

}