import 'package:flutter/material.dart';

class subtract extends StatefulWidget {
  const subtract({super.key});

  @override
  State<subtract> createState() => _subtractState();
}

class _subtractState extends State<subtract> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subtraction', style: TextStyle(color: Colors.grey),),
        backgroundColor: Color(0xffD34E4E),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              TextFormField(
                //style: TextStyle(fontSize: 18, color: Colors.red),
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                //style: TextStyle(fontSize: 18, color: Colors.red),
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      final firstNumber =
                          int.tryParse(firstNumberController.text) ?? 0;
                      final secondNumber =
                          int.tryParse(secondNumberController.text) ?? 0;
                      setState(() {
                        final sub = firstNumber - secondNumber;
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Result'),
                              content: Text('The subtraction is $sub'),
                            ));
                      });
                    },

                    child: Text('Subtract numbers', style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}