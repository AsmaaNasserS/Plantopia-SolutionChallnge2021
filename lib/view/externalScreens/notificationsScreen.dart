import 'package:flutter/material.dart';
import '../widgets/notificationTile.dart';
import 'package:gp_app/const.dart';
class NotificationScreen extends StatefulWidget {
  static const String id = 'notifications';

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kInActiveBackButtonColor,
          title: Center(
            child: Text(
              'Notifications ',
              style: kWelcomeScreensTitleText,
            ),
          ),
        ),
        body: ListView.builder(

          itemCount: Notifications.length,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          itemBuilder: (context,i){
            return Dismissible(
              key: ValueKey(Notifications[i]),
              onDismissed: (direction){
                setState(() {
                  NotificationTile deletedItem = Notifications.removeAt(i);
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Notifications deleted"),
                      action: SnackBarAction(
                          label: 'UNDO',
                          textColor: kInActivelogInButtonColor,
                          onPressed: () => setState(() => Notifications.insert(i, deletedItem),)))
                  );
                });},
              child: Container(
                width: c_width,

                child: NotificationTile(
                  imgURL: Notifications[i].imgURL,
                  nSource: Notifications[i].nSource,
                  nMsg: Notifications[i].nMsg,
                ),
              ),

            );
          },

        )





    );
  }
}
