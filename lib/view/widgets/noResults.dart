import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoResults extends StatelessWidget {
  final String msg;
  final IconData icon;

  NoResults({this.msg, this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.grey.shade600,
          ),
          SizedBox(height: 20),
          Text(msg,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade600,
              ))
        ],
      ),
    );
  }
}
