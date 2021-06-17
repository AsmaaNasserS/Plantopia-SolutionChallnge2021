import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../const.dart';

class SmallButton extends StatelessWidget {
  SmallButton({
    @required this.nav,
    this.icon,
    this.btnclr = kInActivelogInButtonColor,
    @required this.btntext,
  });

  final Function nav;
  final IconData icon;
  final String btntext;
  final Color btnclr;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: btnclr,
      onPressed: nav,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          if (icon != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          if (btntext != null)
          Text(
            btntext,
            style: klogInButtonTextStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
