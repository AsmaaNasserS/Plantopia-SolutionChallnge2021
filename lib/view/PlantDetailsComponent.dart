import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:custom_switch/custom_switch.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconName;
  final Function onPressed;
  final Color colorBackground ;
  final Color iconColor;
  final Color borderColor;
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
      child: Center(
        child: Column(
          children: [
            Icon(
              iconName,
              color: iconColor,
              size: 30,
            ),
            Text(text,
                style: kCardTextDescription),
          ],
        ),
      ),
    );
  }
}

class SwitchRow extends StatefulWidget {
  final IconData iconName ;
  final Color iconColor;
  final String name ;
  final String description ;
  SwitchRow({this.iconName,this.iconColor ,this.name, this.description,});

  @override
  _SwitchRowState createState() => _SwitchRowState(iconName: iconName,iconColor: iconColor,description: description,name: name
  );
}
class _SwitchRowState extends State<SwitchRow> {
  final IconData iconName ;
  final Color iconColor;
  final String name ;
  final String description ;
  _SwitchRowState({this.iconName,this.iconColor ,this.name, this.description});

  // String waterTrue ='7 Day repeat | Morning';
  // String fertilizeTrue ='1 Day repeat | Week';
  // String waterOrFertilizeFalse='Not Set';
  @override
  Widget build(BuildContext context) {
    bool status = false;
    final mediaQuery = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(iconName,
            color: iconColor,
            size: 30),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: mediaQuery.height * 0.05,
            width: mediaQuery.width * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: kTextDescription),
                Text(description,style: kTextDescription),
              ],
            ),
          ),
        ),
        CustomSwitch(
          activeColor: kInActivelogInButtonColor,
          value: status,
          onChanged: (value) {
            //print("VALUE : $value");
            setState(() {
              status = value;
            });
          },
        ),
      ],
    );
  }
}
