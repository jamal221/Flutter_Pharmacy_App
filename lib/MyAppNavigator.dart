import 'package:flutter/material.dart';

class MyAppNavigator extends StatelessWidget {
  const MyAppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        color: Colors.amber,
      ),
    );
  }
}
