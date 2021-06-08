import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gp_app/view/PlantDetailsComponent.dart';
//import 'package:image_picker/image_picker.dart';
//import 'dart:io';

class PlantDetails extends StatefulWidget {
  static String id = 'plant_details';
  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}
class _PlantDetailsState extends State<PlantDetails> {
  //Future<File> imageFile;

  // pickImageFromGallery(ImageSource Source) {
  //   setState(() {
  //     imageFile = ImagePicker.pickImage(source: Source);
  //   });
  // }
  //
  // Widget showImage () {
  //   return FutureBuilder<File>(
  //     future: imageFile,
  //     builder:(BuildContext context, AsyncSnapshot<File> snapshot) {
  //       if (snapshot.connectionState == ConnectionState.done &&
  //           snapshot.data != null) {
  //         return Image.file(
  //           snapshot.data,
  //         );
  //       }
  //     },
  //   );
  // }
          // return Image.file(
          //   snapshot.data,
          //   width: 100,
          //   height: 100,
          // );
        // } else if(snapshot.error != null) {
        //   return Text('no image selected');

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kActiveBackButtonColor,
        title: Text(
          'Spinach',
          style: kWelcomeScreensTitleText,
        ),
        //toolbarHeight: mediaQuery.height * 0.09,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: kTextBoldColour),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      child: Container(
                        height: mediaQuery.height * 0.06,
                        width: mediaQuery.width * 0.45,
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: kButtonTextColour,
                            ),
                            Text('Edit Product Photo',
                              style:klogInButtonTextStyle ,
                            ),
                          ],
                        ),
                      ),
                      onPressed:(){} ,
                    ),
                  ),
                  height: mediaQuery.height * 0.30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/spinach.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //showImage(),
                // FlatButton(
                //   onPressed: () {
                //     pickImageFromGallery(ImageSource.gallery);
                //   },
                //   child: Text('Edit Product Photo'),
                // ),

                SizedBox(height: mediaQuery.height * 0.01),
                Padding(
                  //padding: const EdgeInsets.all(15.0),
                  padding: EdgeInsets.symmetric(
                      vertical: mediaQuery.height * 0.02,
                      horizontal: mediaQuery.width * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextOfTitle(textName:'Tasks (1)'),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoundedIconButton(
                            iconName: Icons.wb_sunny_outlined,
                            iconColor: kInActivelogInButtonColor,
                            colorBackground: kButtonTextColour,
                            borderColor: kInActivelogInButtonColor ,
                            onPressed: () {},
                          ),
                          RoundedIconButton(
                            iconName: MdiIcons.waterOutline,
                            iconColor: kButtonTextColour,
                            colorBackground: kInActivelogInButtonColor,
                            borderColor: kInActivelogInButtonColor ,
                            onPressed: () {},
                          ),
                          RoundedIconButton(
                            iconName:MdiIcons.treeOutline,
                            iconColor: kInActivelogInButtonColor,
                            colorBackground: Colors.greenAccent[100],
                            borderColor: Colors.greenAccent[100] ,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: mediaQuery.height * 0.00,
                            horizontal: mediaQuery.width * 0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextOfIconButton(textName: 'Light'),
                            TextOfIconButton(textName: 'Water'),
                            TextOfIconButton(textName: 'Clean'),
                          ],
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      TextOfTitle(textName:'Plants Information'),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Text(
                        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.',
                        style: kTextDescription,
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      TextOfTitle(textName:'Usage & Features'),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Container(
                        padding: EdgeInsets.all(mediaQuery.width * 0.02),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          border: Border.all(color: kActiveBackButtonColor),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.10),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(mediaQuery.width * 0.01),
                              child: Column(
                                children: [
                                  Icon(MdiIcons.palmTree,
                                      color: kInActivelogInButtonColor,
                                      size: 40),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('it purify air and easy to grow',
                                    style: kTextDescription),
                                Text('it purify air and easy to grow',
                                    style: kTextDescription),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableCard(
                            iconName:Icons.wb_sunny_outlined,
                            iconColor: kActiveOrangeColor,
                            text: 'indoor: Medium \n outside: Part Of Shade',
                          ),
                          ReusableCard(
                            iconName: MdiIcons.waterOutline,
                            iconColor: Colors.lightBlue,
                            text: 'Medium Water',
                          ),
                          ReusableCard(
                            iconName: MdiIcons.waterOutline,
                            iconColor: Colors.deepPurple,
                            text: '40% Humidity',
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      TextOfTitle(textName:'Care Options'),
                      SizedBox(height: mediaQuery.height * 0.01),
                      SwitchRow(
                        iconName: MdiIcons.water,
                        iconColor: kInActivelogInButtonColor,
                        name: 'Water',
                        description: '7 Day repeat | Morning',
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      SwitchRow(
                        iconName: MdiIcons.palmTree,
                        iconColor: kTextBoldColour,
                        name: 'Fertilize',
                        description: 'Not Set',
                      ),
                      SizedBox(height: mediaQuery.height * 0.06),
                      FlatButton(
                        onPressed: () {},
                        color: kInActivelogInButtonColor,
                        //minWidth: mediaQuery.width * 0.24,
                        height: mediaQuery.height * 0.06,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child:
                            Text('Set Reminder', style: kBottomButtonTextStyle),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
