import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/view/profile/Photos.dart';
import 'package:gp_app/view/profile/gardenPlantItem.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

import '../../const.dart';
import '../PlantDetails.dart';
class GardenView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
     return
       Container(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:10.0),
             child: SmallButton(
               nav: () {
                 /// should navigate to plant id. screen to take a picture of the new plant
                 //Navigator.pushNamed(context, EditProductProfile.id);
               },
               btntext: '   Add a new plant',
               icon: Icons.add_a_photo_outlined,
             ),
           ),
           Expanded(
             child: GridView.count(
             primary: false,
               padding: const EdgeInsets.all(1.5),
               // card size
               childAspectRatio: 0.65,
               mainAxisSpacing: 1.0,
               crossAxisSpacing: 1.0,
               crossAxisCount: 2,
               children: List<PlantICard>.generate(photo.length, (index) => PlantICard(
                 longPress:() {
                   showDialog<String>(
                       context: context,
                       builder: (BuildContext context) => AlertDialog(
                         title: Text('Delete plant'),
                         content: Text(
                           'Are you sure you want to delete "plantname"',
                           style: TextStyle(fontSize: 18),
                         ),
                         actions: [
                           TextButton(
                             onPressed: () {
                               ///todo:delete plant from garden
                               Navigator.pop(context);
                             },
                             child: Text(
                               'Delete',
                               style: TextStyle(fontSize: 20),
                             ),
                           ),
                           TextButton(
                               onPressed: () => Navigator.pop(context, 'Cancel'),
                               child: Text(
                                 'Cancel',
                                 style: TextStyle(fontSize: 20, color: Colors.grey),
                               ))
                         ],
                       ));
                 }, tap: () {
                 Navigator.pushNamed(context, PlantDetails.id);
               },childWidget: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Container(
                     child: Stack(children: [
                       Container(
                         decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage(
                                 'images/plant1.jpg',
                               ),
                               fit: BoxFit.cover,
                             ),
                             borderRadius: BorderRadius.circular(20)),
                         height: mq.height * .25,
                       ),
                       Container(
                           decoration: BoxDecoration(
                             gradient: LinearGradient(
                                 begin: Alignment.topCenter,
                                 end: Alignment.bottomCenter,
                                 colors: <Color>[
                                   Colors.black.withAlpha(0),
                                   Colors.black12,
                                   Colors.black87
                                 ]),
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                           ))
                     ]),
                   ),
                   Padding(
                     padding: EdgeInsets.all(14.0),
                     child: Text(
                       'Daisy flowers',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: Colors.grey.shade700),
                     ),
                   ),
                 ],
               ),
               ),
             ),




              ),),],),
           );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:gp_app/view/profile/Photos.dart';
// import 'package:gp_app/view/profile/gardenPlantItem.dart';
// import 'package:gp_app/view/widgets/smallGreenBtn.dart';
//
// import '../../const.dart';
// class GardenView extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return
//       Container(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: SmallButton(
//                 nav: () {
//                   /// should navigate to plant id. screen to take a picture of the new plant
//                   //Navigator.pushNamed(context, EditProductProfile.id);
//                 },
//                 btntext: 'Add new product',
//                 icon: Icons.add_a_photo_outlined,
//               ),
//             ),
//             GridView.count(
//               primary: false,
//               padding: const EdgeInsets.all(1.5),
//               // card size
//               childAspectRatio: 0.65,
//               mainAxisSpacing: 1.0,
//               crossAxisSpacing: 1.0,
//               crossAxisCount: 2,
//               children: List.generate(photo.length, (index) => PlantICard(
//                 longPress: ,
//               ),).,
//             ),
//           ],
//         ),
//
//
//
//       );
//   }
// }
//
//
// ---------------------
//
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:gp_app/view/PlantDetails.dart';
//
// class PlantICard extends StatelessWidget {
//   final Function longPress, tap;
//   final Widget childWidget;
//   PlantICard({this.childWidget, this.longPress, this.tap});
//   @override
//   Widget build(BuildContext context) {
//     final mq = MediaQuery.of(context).size;
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, PlantDetails.id);
//       },
//       onLongPressUp: () {
//         showDialog<String>(
//             context: context,
//             builder: (BuildContext context) => AlertDialog(
//               title: Text('Delete plant'),
//               content: Text(
//                 'Are you sure you want to delete "plantname"',
//                 style: TextStyle(fontSize: 18),
//               ),
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     ///todo:delete plant from garden
//                     Navigator.pop(context);
//                   },
//                   child: Text(
//                     'Delete',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 TextButton(
//                     onPressed: () => Navigator.pop(context, 'Cancel'),
//                     child: Text(
//                       'Cancel',
//                       style: TextStyle(fontSize: 20, color: Colors.grey),
//                     ))
//               ],
//             ));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey.shade200,
//           borderRadius: BorderRadius.all(Radius.circular(15)),
//         ),
//         margin: EdgeInsets.all(10.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               child: Stack(children: [
//                 Container(
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'images/plant1.jpg',
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20)),
//                   height: mq.height * .25,
//                 ),
//                 Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: <Color>[
//                             Colors.black.withAlpha(0),
//                             Colors.black12,
//                             Colors.black87
//                           ]),
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ))
//               ]),
//             ),
//             Padding(
//               padding: EdgeInsets.all(14.0),
//               child: Text(
//                 'Sabbara',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade700),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
