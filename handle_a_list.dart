// an approach where the list is defined in the code block
void main(){
  // variables to be used
  var list = [];
  var newList =[];
  int max_value = 0;

  for (int i = 1; i <= 18; i++){  // populate the list with values
    list.add(i);
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