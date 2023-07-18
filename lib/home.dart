import 'package:flutter/material.dart';
import 'MyAppNavigator.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ثبت نام',
            style: TextStyle(
                color: Colors.amber, fontSize: 20, fontFamily: "Vazir"),
          ),
          leading: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.amber,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(12, 15, 15, 6),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  print("this is me first application");
                },
                icon: const Icon(
                  Icons.map,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {
                  print("this is my second application");
                },
                icon: const Icon(
                  Icons.show_chart,
                  color: Color.fromARGB(255, 47, 26, 212),
                ))
          ],
        ),
        bottomNavigationBar: MyAppNavigator(),
      ),
    );
  }
}
