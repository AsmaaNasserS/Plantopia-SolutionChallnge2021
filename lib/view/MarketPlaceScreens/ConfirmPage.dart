import 'package:flutter/material.dart';
class ConfirmPage extends StatelessWidget {
static const String id = 'ConfirmPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('by confirming this transaction we will send you an email withen 48 hours')

          ],
        ),
      ),
    );
  }
}
