import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoResults extends StatelessWidget {
  final String type;
  final IconData icon;

  NoResults(this.type, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 30 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.grey.shade600,
          ),
          SizedBox(height: 20),
          Text('No $type to show',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade600,
              ))
        ],
      ),
    );
  }
}
