import 'package:flutter/material.dart';

class IdentityCardView extends StatefulWidget {
  const IdentityCardView({super.key});

  @override
  State<IdentityCardView> createState() => _IdentityCardViewState();
}

class _IdentityCardViewState extends State<IdentityCardView> {
 textWeight(String title,String subtitle){
   return  RichText(
     text: TextSpan(
     text: title,
     style: TextStyle(color: Colors.black, fontSize: 16),
         children: [
           TextSpan(
             text: subtitle,
               style: TextStyle(
     color: Colors.black,
       fontSize: 16,

     ),
           )
         ]
   ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Id Card',
          style: TextStyle(color: Colors.blueAccent, fontSize: 22),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue, width: 12),

          ),
          child: Row(
            children:[
              Flexible(
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/class.png'),
                      fit: BoxFit.cover,
                    ),
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    textWeight('Name', 'Subash'),
                    textWeight('Age', '22'),
                    textWeight('Gender', 'Male'),
                    textWeight('Address', 'Gundu'),
                    textWeight('level', 'BCA'),
                    textWeight('Phone', '9863478444')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}