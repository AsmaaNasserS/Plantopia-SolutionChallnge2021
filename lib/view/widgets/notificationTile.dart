import 'package:flutter/material.dart';



class NotificationTile extends StatelessWidget {
  String imgURL;
  String nSource;
  String nMsg;
  NotificationTile({this.imgURL,this.nSource,this.nMsg});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap:((){
        print('tapped');
        // to page
      }),
      onLongPress: ((){ print('loong');
        // delete from notifications dialog
      }),
      child:
      Container(
        width: 200.0,
        height: 100,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imgURL),
            radius: 30,
          ),
          title:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text: TextSpan(

                  children: [
                    TextSpan( text:"$nSource ", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade900
                    ),),
                    TextSpan(text: "$nMsg ...", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800
                    ),)
                  ]
              ))
              ,

              Text('hour ago'),
              Divider(
                thickness: 1.0,
              )
            ],
          ),


        ),
      ),
    );
  }
}
List<NotificationTile> Notifications = [
  NotificationTile(imgURL: 'images/cat.png' , nSource: 'Mariouma ' ,nMsg:'commented on your post' ),
  NotificationTile(imgURL:'images/cat1.png' , nSource: "Meeting " , nMsg:"will start soon" ),
  NotificationTile(imgURL: 'images/cat.png' , nSource: 'Mariouma ' ,nMsg:'commented on your post' ),
  NotificationTile(imgURL:'images/cat1.png' , nSource: "Meeting " , nMsg:"will start soon" ),
  NotificationTile(imgURL: 'images/cat.png' , nSource: 'Mariouma ' ,nMsg:'commented on your post' ),
  NotificationTile(imgURL:'images/cat1.png' , nSource: "Meeting " , nMsg:"will start soon" ),
  NotificationTile(imgURL: 'images/cat.png' , nSource: 'Mariouma ' ,nMsg:'commented on your post' ),
  NotificationTile(imgURL:'images/cat1.png' , nSource: "Meeting " , nMsg:"will start soon" ),
  NotificationTile(imgURL:'images/tom.png', nSource: 'gargeer ', nMsg:'should be watered now')
];
