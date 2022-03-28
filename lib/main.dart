import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
int dice_no=1;
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
       child: Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 149, 231),
        body: Center(
          child: Column(children:<Widget> [
            Expanded(child:
            ElevatedButton(onPressed:(){
              setState(() {
                dice_no =Random().nextInt(6)+1;
              });

            },
             child: Image.asset('images/dice$dice_no.png')
             )
             ), ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
      
    ),);
  }
}

