import 'package:flutter/material.dart';
import 'package:swastik/app_routes.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.login);
            },
            child: Text('Login'),),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.identityCard);

            },
            child: Text('Identity Card'),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text('Monday Class'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Swastik Class'),
          ),
        ],
      ),
    );
  }
}