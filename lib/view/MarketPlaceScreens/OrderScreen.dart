import 'package:flutter/material.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';

import 'orderItem.dart';
class OrdersScreen extends StatelessWidget {
  static const String id = "Orders";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders', style: TextStyle(color: Colors.grey.shade600),),
      ),
      drawer: sideDrawer(),
      body: ListView.builder(
        itemBuilder: (context, i) => OrderItem(),
        itemCount: 10,
      ),
    );
  }
}
