import 'package:flutter/material.dart';

class MondayClass extends StatefulWidget {
  const MondayClass({super.key});

  @override
  State<MondayClass> createState() => _MondayClassState();
}

class _MondayClassState extends State<MondayClass> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('monday_class'),
        backgroundColor: Color(0xffFF6C0C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: firstNumberController,

              style: TextStyle(fontSize: 18, color: Colors.red),
              decoration: InputDecoration(
                labelText: 'Enter first number',
                labelStyle: TextStyle(fontSize: 30, color: Colors.green),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: secondNumberController,

              style: TextStyle(fontSize: 18, color: Colors.red),
              decoration: InputDecoration(
                labelText: 'Enter second number',
                labelStyle: TextStyle(fontSize: 30, color: Colors.green),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF6C0C),

                  ),
                  onPressed: () {
                    final firstNumber =
                        int.parse(firstNumberController.text) ?? 0;
                    final secondNumber =
                        int.parse(secondNumberController.text) ?? 0;
                    setState(() {
                      final sum = firstNumber + secondNumber;
                      showDialog(context: context,
                          builder: (context) =>
                              AlertDialog(
                                title: Text('Result'),
                                content: Text('The sum is $sum'),
                              ));
                    });
                  },
                  child: Text('add numbers')),
            ),
          ],
        ),
      ),
    );
  }
}
