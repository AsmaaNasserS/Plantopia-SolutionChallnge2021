import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class RoundedIconButton extends StatelessWidget {
  final IconData iconName;
  final Function onPressed;
  final Color colorBackground ;
  final Color iconColor;
  final Color borderColor;
  //final BorderSide borderSide;

  RoundedIconButton({@required this.iconName, this.onPressed , this.colorBackground , this.iconColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return FlatButton(
      onPressed: () {},
      color: colorBackground,
      minWidth: mediaQuery.width * 0.24,
      height: mediaQuery.height * 0.05,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side:BorderSide(
          color: borderColor,
          width: 2,
          style: BorderStyle.solid
        ),
      ),
      child: Icon(
        iconName,
        color: iconColor,
        size: 30,
      ),
    );
  }
}

class TextOfIconButton extends StatelessWidget {
  final String textName;
  TextOfIconButton({this.textName});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(color: KTextLightColour),
    );
  }
}
class TextOfTitle extends StatelessWidget {
  final String textName;
  TextOfTitle({this.textName});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: kTitleText,
    );
  }
}

class ReusableCard extends StatelessWidget {
  final IconData iconName ;
  final Color iconColor;
  final String text ;
  //final String text2;
  ReusableCard({this.iconName,this.iconColor , this.text });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: mediaQuery.width * 0.28,
      height: mediaQuery.height * 0.15,
      padding: EdgeInsets.all(mediaQuery.width * 0.02),
      decoration: BoxDecoration(
        color: kCardColor,
        border: Border.all(color: kActiveBackButtonColor),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.10),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(
                0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            iconName,
            color: iconColor,
            size: 30,
          ),
          Text(text,
              style: kCardTextDescription),
          // Text(text1,
          //     style: kCardTextDescription),
        ],
      ),
    );
  }
}

