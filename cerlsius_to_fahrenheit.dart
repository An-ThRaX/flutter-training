import 'dart:io';
void main(){
// first approach to solve the problem

//   print("What measurement unit you want to insert? Celsius or Fahrenheit. ");
//   String temp_unit = stdin.readLineSync()!.toLowerCase();  // determine what measurement unit will be inputed

//   print("What is the value? ");
//   double given_value = double.parse(stdin.readLineSync()!);  // store the valued which will be converted

//   if (temp_unit == "celsius"){
//     double converted_value = ((given_value * 9/5) + 32);  
//     print("The final value is $converted_value Fahrenheit");  // convert Celsius to Fahrenheit
//   }else{
//     double converted_value = ((given_value - 32) * 5/9);  // convert Fahrenheit to Celsius
//     print("The final value is $converted_value Celsius");
//   }


// define a method to do the task

double convertorCelsiusToFahrenheit(){
  print("What is the Celsius value to be converted? ");
  double given_value = double.parse(stdin.readLineSync()!);  // store the valued which will be converted
  return double.parse(((given_value * 9/5) + 32).toStringAsFixed(2));
}

double convertorFahrenheitToCelsius(){
  print("What is the Fahnrenheit value to be converted? ");
  double given_value = double.parse(stdin.readLineSync()!);  // store the value which will be converted
  return double.parse(((given_value - 32) * 5/9).toStringAsFixed(2));
}

// call the methods to get the results

double celsiusValue = convertorCelsiusToFahrenheit();
print("The inserted value equals to $celsiusValue Fahrenheit degrees.");
print('');

double fahrenheitValue = convertorFahrenheitToCelsius();
print("The inserted value equals to $fahrenheitValue Celsius degrees.");
print('');

}





