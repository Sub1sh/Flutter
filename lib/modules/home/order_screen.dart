import 'package:flutter/material.dart';

import '../../app_text_styles.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  List<Map<String,dynamic>> orderitems=[
    {
      "orderId":"454981365",
      "amount":2.51,
      "date": "Mon,July 2nd",
      "weight":"1.5lbs",
      "status":"Shipped",
      "statusColor":Colors.purple,
      "statusBgColor":Colors.blueAccent,
    },
    {
      "orderId": "2334324",
      "amount": 2.50,
      "date": "Mon, July 3rd",
      "weight": "2.5 lbs",
      "status": "Delivered",
      "statusColor": Colors.green,
      "statusBgColor": Colors.greenAccent,
    },
    {
      "orderId": "21323123",
      "amount": 3.50,
      "date": "Mon, July 3rd",
      "weight": "2.5 lbs",
      "status": "Cancelled",
      "statusColor": Colors.red,
      "statusBgColor": Colors.orange,
    },
    {
      "orderId": "12312",
      "amount": 5.50,
      "date": "Mon, July 3rd",
      "weight": "2.5 lbs",
      "status": "Pending",
      "statusColor": Colors.orange,
      "statusBgColor": Colors.yellowAccent,
    },
    {
      "orderId": "56456464",
      "amount": 8.50,
      "date": "Mon, July 3rd",
      "weight": "2.5 lbs",
      "status": "Shipped",
      "statusColor": Colors.purple,
      "statusBgColor": Colors.blueAccent,
    },
  ];



  orderWidget(List<Map<String,dynamic>>order,int index){
    return    Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(
                text: 'Order', style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
                children: [
                  TextSpan(text: ' # ',style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 16),),
                  TextSpan(text: ': ',style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 14),),
                  TextSpan(text: order[index] ['orderId'],style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 14,
                    color: Color(0xff7169B9),
                  ),),
                ],
              ),),
              Text('\$${order[index]['amount']}',
                style: AppTextStyle.poppinesBold.copyWith(
                  fontSize: 16,
                ),),
            ],
          ),
          Text('Mon,July 3rd',
            style: AppTextStyle.poppinesBold.copyWith(
              fontSize: 14,
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffE7E7E7),),
                ),
                padding: EdgeInsets.all(6),
                child: Text('2.5 lbs',style: AppTextStyle.poppinsMedium.copyWith(
                  fontSize: 12,
                ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: order[index]['statusBgColor'],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffE7E7E7),
                  ),
                ),
                padding: EdgeInsets.all(6),
                child: Text(order[index]['status'],style: AppTextStyle.poppinesMedium.copyWith(
                  fontSize: 12,
                  color: order[index]['statusColor'],
                ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent Orders',style: AppTextStyle.poppinesMedium.copyWith(fontSize: 24),
              ),
              Text('Below are your most recent orders.',style: AppTextStyle.poppinsRegular.copyWith(fontSize: 20),
              ),
              SizedBox(height: 10),
              ListView.separated(
                separatorBuilder:(context, index){
                  return SizedBox(height:10);
                },
                itemBuilder: (context, index){
                  return orderWidget(orderitems,index);
                },
                itemCount: orderitems.length,
                shrinkWrap: true,
                primary: false,
                // children: [
                //   for(int i=0;i<21;i++)...{
                //     orderWidget(),
                //   }
                // orderWidget(),
                // orderWidget(),
                // orderWidget(),
                // orderWidget(),
                // orderWidget(),
                // orderWidget(),
                // orderWidget(),

                // ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}