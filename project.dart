// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _controller = TextEditingController();
//   double fahrenheit = 0;

//   void _convertFromCelsiusToFahrenheit() {
//     String input = _controller.text;
//     double celsius = double.tryParse(input) ?? 0.0;
//     setState(() {
//       fahrenheit = (celsius * 9 / 5) + 32;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Temperature value in Fahrenheit'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: _controller,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Enter the temperature value in Celsius degrees',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _convertFromCelsiusToFahrenheit,
//               child: Text('Convert in Fahrenheit'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Fahrenheit temperature: $fahrenheit',
//               style: TextStyle(fontSize: 24),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
