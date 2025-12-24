import 'package:flutter/material.dart';

class ClassApp extends StatelessWidget {
  const ClassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text('Simple Flutter App',style: TextStyle(fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.green,

          ),)
      ),
      body: Center(
        child: Text('welcome'),
      ),
    );
  }
}
