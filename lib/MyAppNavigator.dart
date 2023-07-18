import 'package:flutter/material.dart';

class MyAppNavigator extends StatelessWidget {
  const MyAppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 58,
              width: MediaQuery.of(context).size.width / 2 - 10,
              // color: Color.fromARGB(255, 96, 82, 82),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.home), Icon(Icons.person_4_rounded)],
              ),
            ),
            Container(
              height: 58,
              width: MediaQuery.of(context).size.width / 2 - 10,
              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  Icon(Icons.expand_circle_down_rounded)
                ],
              ),
            ),
          ],
        ),
      ),
      color: Colors.amber,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blueGrey,
    );
  }
}
