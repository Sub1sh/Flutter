
import 'package:flutter/material.dart';
import 'package:swastik/app_text_styles.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
        style: AppTextStyle.poppinesSemiBold.copyWith(fontSize: 24),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        children: [
          Text(
            'Top Beaches'
                style: AppTextStyle.poppinesMedium.copyWith(fontSize: 20),
          ),
      SizedBox(height: 16),
      GridView.count(crossAxisCount: 4,
        primary: false,
        shrinkWrap: true,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue,width: 2),

          ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red,width: 2),

            ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue,width: 2),

            ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue,width: 2),

            ),
            padding: EdgeInsets.all(16),
          ),
        ],
      ),
        ],
            ),
    ),
      );
  }
}
