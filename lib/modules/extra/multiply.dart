import 'package:flutter/material.dart';

class Multiply extends StatefulWidget {
  const Multiply({super.key});

  @override
  State<Multiply> createState() => _MultiplyState();
}

class _MultiplyState extends State<Multiply> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiply', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xffD34E4E),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.brown),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
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

                    final mul = firstNumber * secondNumber;

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Result'),
                        content: Text('The multiplication is $mul'),
                      ),
                    );
                  },
                  child: Text(
                    'Multiply numbers',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
