import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child:Text('Calculadora'),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Numero', style: TextStyle(fontSize: 72),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('AC', style: TextStyle(fontSize: 48),),
                Text(''),
                Text(''),
                Text('<X', style: TextStyle(fontSize: 48),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('7', style: TextStyle(fontSize: 48),),
                Text('8', style: TextStyle(fontSize: 48),),
                Text('9', style: TextStyle(fontSize: 48),),
                Text('/', style: TextStyle(fontSize: 48),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('4', style: TextStyle(fontSize: 48),),
                Text('5', style: TextStyle(fontSize: 48),),
                Text('6', style: TextStyle(fontSize: 48),),
                Text('X', style: TextStyle(fontSize: 48),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1', style: TextStyle(fontSize: 48),),
                Text('2', style: TextStyle(fontSize: 48),),
                Text('3', style: TextStyle(fontSize: 48),),
                Text('-', style: TextStyle(fontSize: 48),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('0', style: TextStyle(fontSize: 48),),
                Text(',', style: TextStyle(fontSize: 48),),
                Text('=', style: TextStyle(fontSize: 48),),
                Text('+', style: TextStyle(fontSize: 48),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
