import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kInActivelogInButtonColor = Color(0xFF00B761); // login + get started + sign up + any green button
//
const kActivelogInButtonColor = Color(0xFF0B9755); // login + get started + sign up + any green button

// const kInActivelogInButtonColor = Color(0xFF00B761); // login + get started + sign up + any green button
// //
// const kActivelogInButtonColor = Color(0xFF0B9755); // login + get started + sign up + any green button
//=======
// const kInActivelogInButtonColor =
//     Color(0xFF00B761); // login + get started + sign up + any green button
// const kActivelogInButtonColor =
//     Color(0xFF0B9755); // login + get started + sign up + any green button


const kInActiveBackButtonColor = Color(0xFFEBEBEB); // or any grey button
const kActiveBackButtonColor = Color(0xFFD5D5D5);

const kActiveOrangeColor = Color(0xFFE17700);
const kInActiveOrangeColor = Color(0xFFE3AA64);

const appBarColor = Color(0xFFEBEBEB);

//const kBottomFootbarContainerColour = Color(0xFFEBEBEB);
const kButtonTextColour = Color(0xFFF8F8F8);

const kBackgroundColor = Color(0xFFF8F8F8); // the app background shades
const kCardColor = Color(0xFFFFFFFF); // Market card and anysimilar compononet
//
const kTextBoldColour = Color(0xFF6E6E6E); // for the titles in the screens
const KTextLightColour = Color(0xFF727272); // subtitles and body text



const kHeadlineTextColorStyle = TextStyle(
color: Colors.black,
fontSize: 16,
fontWeight: FontWeight.bold
);


const klogInButtonTextStyle = TextStyle(
  fontSize: 18.00,
  fontWeight: FontWeight.bold,
  color: Color(0xFFF8F8F8), // text of button color
);

const kBottomButtonTextStyle = TextStyle(
  fontSize: 20.00,
  fontWeight: FontWeight.bold,
  color: Color(0xFFF8F8F8), // text of button color
);
const kWelcomeScreensTitleText = TextStyle(
  fontSize: 25.00,
  fontWeight: FontWeight.bold,
  color: Color(0xFF6E6E6E),
);

const kWelcomeScreensDescriptionText = TextStyle(
  fontSize: 15.00,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const kTitleText = TextStyle(
  fontSize: 18.00,
  fontWeight: FontWeight.w500,
  color: Color(0xFF6E6E6E),
);

const kTextDescription = TextStyle(
  fontSize: 15.00,
  color: Color(0xFF727272),
  //height: 1.5,
);

const kCardTextDescription = TextStyle(
  fontSize: 13.00,
  color: Color(0xFF6E6E6E),
);

//used in markET
const kBodyTextColour = TextStyle(
  fontSize: 15.00,
  fontWeight: FontWeight.bold,
  color: Color(0xFF727272),
  height: 1.5,
);

const kLightText = TextStyle(
  fontSize: 15.00,
  fontWeight: FontWeight.bold,
  color: Color(0xFFDCDCDC),
  height: 1.5,
);

const kExpertsDescriptionTexts = TextStyle(
  fontSize: 15.00,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);


Widget kHeadlineIcon({IconData icon, double size, Color color = kActivelogInButtonColor}) => Icon(
  icon,
  color: color,
  size: size,
);

Widget plantTaxonomy(
{
  final String label,
  final String taxonomy,

}) =>Column(
  children: [
    Row(
      children: [
        Text(label,
            style: taxonomyLabelStyle),
        SizedBox(width: 50),
        Text(taxonomy,
            style: taxonomyPlantTextStyle),
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade400,
      ),
    ),
  ],
);



const taxonomyPlantTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold
);

const taxonomyLabelStyle =TextStyle(
    color: KTextLightColour,
    fontSize: 15,
    //fontWeight: FontWeight.bold
);

const kButtonLightText = TextStyle(
  fontSize: 18.00,
  fontWeight: FontWeight.w600,
  color: kBackgroundColor,
);

const kArticleTextFieldDecoration = InputDecoration(
  hintText: 'Enter A Value',
  hintStyle:TextStyle(
    fontSize: 18.00,
    fontWeight: FontWeight.w600,
    color: KTextLightColour,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide( color: kActiveBackButtonColor),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kInActivelogInButtonColor),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);
