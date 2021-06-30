
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool pending = false;
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/houseplants.jpg'),
          radius: 30,
        ),
        title: Text('Item name'),
        subtitle: Text('price x quantity'),
        trailing: SmallButton(
          btntext: pending ? 'Pending' : 'Delivered',
          nav: () {},
          btnclr: pending ? kInActivelogInButtonColor : kInActiveOrangeColor,
        ),
      ),
    );
  }
}
