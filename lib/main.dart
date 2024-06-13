import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String number = 'Numero';

  void calculate( String key) {
    switch (key) {
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '0':
        setState(() {
          number += key;
        });
        break;
      
      case 'AC':
        setState(() {
          number = '0';
        });;
        break;
      case '<X':
        number = '0';
        break;
     
      case '/':
        number += key;
        break;
     
      case 'X':
        number += key;
        break;
      
      case '-':
        number += key;
        break;
     
      case ',':
        number += key;
        break;
      case '=':
        number += key;
        break;
      case '+':
        number += key;
        break;
      default:
        print('Opção inválida');
    }
  }
 
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(number, style: const TextStyle(fontSize: 72),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calculate('AC'),
                  child: const Text('AC', style: TextStyle(fontSize: 48),)
                ),
                Text(''),
                Text(''),
                GestureDetector(
                  onTap: () =>calculate('<x'),
                  child: const Text('<x', style: TextStyle(fontSize: 48),)
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calculate('7'),
                  child: const Text('7', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () => calculate('8'),
                  child: const Text('8', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('9'),
                  child: const Text('9', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('/'),
                  child: const Text('/', style: TextStyle(fontSize: 48),)
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calculate('4'),
                  child: Text('4', style: TextStyle(fontSize: 48),)),
                GestureDetector(
                  onTap: () => calculate('5'),
                  child: Text('5', style: TextStyle(fontSize: 48),)),
                GestureDetector(
                  onTap: () => calculate('6'),
                  child: Text('6', style: TextStyle(fontSize: 48),)),
                GestureDetector(
                  onTap: () => calculate('X'),
                  child: Text('X', style: TextStyle(fontSize: 48),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () =>calculate('1'),
                  child: const Text('1', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('2'),
                  child: const Text('2', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('3'),
                  child: const Text('3', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('-'),
                  child: const Text('-', style: TextStyle(fontSize: 48),)
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () =>calculate('0'),
                  child: const Text('0', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate(','),
                  child: const Text(',', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('='),
                  child: const Text('=', style: TextStyle(fontSize: 48),)
                ),
                GestureDetector(
                  onTap: () =>calculate('+'),
                  child: const Text('+', style: TextStyle(fontSize: 48),)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
