// import 'package:flutter/material.dart';
// import 'package:gp_app/const.dart';
// import 'widgets/textFormField.dart';
//
// class ReusableAlertDialog extends StatefulWidget {
//   final String dialogTitle;
//   final TextEditingController currentTitleController;
//   final TextEditingController newTitleController;
//   final String currentLabelName;
//   final String newLabelName;
//
//   ReusableAlertDialog(
//       {this.dialogTitle,
//       this.currentTitleController,
//       this.newTitleController,
//       this.currentLabelName,
//       this.newLabelName});
//
//   @override
//   _ReusableAlertDialogState createState() => _ReusableAlertDialogState(
//       dialogTitle: dialogTitle,
//       currentTitleController: currentTitleController,
//       newTitleController: newTitleController,
//       currentLabelName: currentLabelName,
//       newLabelName: newLabelName);
// }
//
// class _ReusableAlertDialogState extends State<ReusableAlertDialog> {
//   final String dialogTitle; //edit your name
//   final TextEditingController currentTitleController;
//   final TextEditingController newTitleController;
//   final String currentLabelName;
//   final String newLabelName;
//
//   _ReusableAlertDialogState({
//     this.currentLabelName,
//     this.newLabelName,
//     this.dialogTitle,
//     this.currentTitleController,
//     this.newTitleController,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return AlertDialog(
//       content: Stack(
//         children: <Widget>[
//           Form(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text(
//                   dialogTitle,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.green,
//                     fontSize: 20,
//                   ),
//                   textAlign: TextAlign.start,
//                 ),
//                 TextField(
//                   controller: currentTitleController,
//                   readOnly: true,
//                   decoration: InputDecoration(
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green),
//                     ),
//                     labelText: currentLabelName,
//                     labelStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 ///Change
//                 TextField(
//                   controller: newTitleController,
//                   onTap: () => print("yes"),
//                   decoration: InputDecoration(
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green),
//                     ),
//                     labelText: newLabelName,
//                     labelStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: mediaQuery.width * .08),
//                 Container(
//                   height: mediaQuery.height * 0.05,
//                   width: mediaQuery.width * 0.55,
//                   child: GestureDetector(
//                     onTap: () => {
//                       //change = true,
//                       Navigator.of(context).pop(context),
//
//                       ///* TODO change profile  PAGE *//*///
//                     },
//                     child: Material(
//                       borderRadius: BorderRadius.circular(20.0),
//                       color: kInActivelogInButtonColor,
//                       child: Center(
//                         child: Text(
//                           'Change',
//                           style: TextStyle(
//                               fontSize: 16.00,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'Montserrat'),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class TextFieldsContainer extends StatefulWidget {
//   final TextEditingController lableControllerName;
//   final Function onTap;
//   final String lableTextName;
//   final bool obscureText ;
//   TextFieldsContainer({this.lableControllerName,this.onTap,this.lableTextName,this.obscureText});
//   @override
//   _TextFieldsContainerState createState() => _TextFieldsContainerState(lableControllerName:lableControllerName, onTap:onTap, lableTextName:lableTextName , obscureText:obscureText);
// }
//
// class _TextFieldsContainerState extends State<TextFieldsContainer> {
//   final TextEditingController lableControllerName;
//   final Function onTap;
//   final String lableTextName;
//   final bool obscureText ;
//   _TextFieldsContainerState({this.lableControllerName,this.onTap,this.lableTextName,this.obscureText});
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return Container(
//       width: mediaQuery.width * 0.8,
//       child: TextField(
//         controller:lableControllerName,
//         onTap: onTap,
//         readOnly: true,
//         decoration: InputDecoration(
//             focusedBorder: UnderlineInputBorder(
//               borderSide: BorderSide(color: Colors.green),
//             ),
//             labelText: lableTextName,
//             labelStyle: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.black,
//             ),
//             suffixIcon: Icon(
//               Icons.arrow_forward_ios_outlined,
//               color: Colors.green,
//             )),
//           obscureText: obscureText,
//       ),
//     );
//   }
// }
