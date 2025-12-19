import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final principalController = TextEditingController();
  final timeController = TextEditingController();
  final rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest', style: TextStyle(color: Colors.white),),
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
                controller: principalController,
                decoration: InputDecoration(
                  labelText: 'Enter Principal',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                //style: TextStyle(fontSize: 18, color: Colors.red),
                keyboardType: TextInputType.number,
                controller: timeController,
                decoration: InputDecoration(
                  labelText: 'Enter Time',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                //style: TextStyle(fontSize: 18, color: Colors.red),
                keyboardType: TextInputType.number,
                controller: rateController,
                decoration: InputDecoration(
                  labelText: 'Enter Rate',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      final principal =
                          int.tryParse(principalController.text) ?? 0;
                      final time =
                          int.tryParse(timeController.text) ?? 0;
                      final rate =
                          int.tryParse(rateController.text) ?? 0;
                      setState(() {
                        final si = (principal * time * rate)/100;
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Result'),
                              content: Text('The simple interest is $si'),
                            ));
                      });
                    },

                    child: Text('Calculate', style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}