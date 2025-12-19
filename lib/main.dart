
import 'package:flutter/material.dart';
import 'package:swastik/app_routes.dart';
import 'package:swastik/modules/extra/class_app.dart';
import 'package:swastik/identity_card_view.dart';

import 'package:swastik/modules/extra/subtract.dart';


void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   initialRoute: AppRoute.home,
      routes: AppRoute.getAppRoutes(),
    );
  }
}
