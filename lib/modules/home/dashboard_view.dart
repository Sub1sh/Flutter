import 'package:flutter/material.dart';

import '../../constants/app_routes.dart';
import '../../constants/app_text_styles.dart';


class  Dashboardview extends StatefulWidget {
  const Dashboardview({super.key});

  @override
  State<Dashboardview> createState() => _State();
}

class _State extends State<Dashboardview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Dashboard',
      style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 24),
    ),
      toolbarHeight: 80,
    ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top Beaches',
                style: AppTextStyle.poppinsMedium.copyWith(fontSize: 20),
              ),
              SizedBox(height: 16),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context,index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    padding: EdgeInsets.all(16),
                  );
                },
                itemCount: 2,
                primary: false,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}