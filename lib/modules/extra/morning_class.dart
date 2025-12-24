import 'dart:ffi';

import 'package:flutter/material.dart';

class morning_class extends StatefulWidget {
  const morning_class ({super.key});

  @override
  State<morning_class> createState() => _State();
}

class _State extends State<morning_class> {
  int value = 0;

  void decrement (){
    if (value > 0) {
      setState(() {
        value --;
      });
    }
    else {
      print('Value cannot be zero');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blue)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text('The value is $value', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(10),
                      elevation: 0,
                      shape: CircleBorder(),
                    ),
                    onPressed: (){
                      setState(() {
                        value = value +1;
                      });

                    }, child: Icon(Icons.add, size: 30, color: Colors.yellow,)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(10),
                      elevation: 0,
                      shape: CircleBorder(),
                    ),
                    onPressed: (){
                      decrement();
                    }, child: Icon(Icons.add, size: 30, color: Colors.black,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}