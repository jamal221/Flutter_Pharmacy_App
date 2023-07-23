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
            'ثبت نام در اپلیکشن',
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: List.generate(4, (int position) {
              return GeneratedItems();
            }),
          ),
        ),
        bottomNavigationBar: MyAppNavigator(),
        floatingActionButton: FloatingActionButton(
            onPressed: newFn,
            backgroundColor: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("جدید"),
                Icon(
                  Icons.add_moderator_sharp,
                  size: 20,
                )
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

void newFn() {
  print("We can manage this button here easily");
}

Card GeneratedItems() {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    elevation: 5,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.network(
                "https://hermoshop.com/26152-homee_default/%DA%A9%D9%88%D9%84%D9%87-%D9%BE%D8%B4%D8%AA%DB%8C-%D9%87%D8%A7%D9%85%D8%AA%D9%88-%D9%85%D8%AF%D9%84-hb202205-2-36l.jpg"),
          ),
          Text(
            "برند",
            style: TextStyle(
              fontFamily: "Vazir",
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          Text(
            "قیمت",
            style: TextStyle(
                fontFamily: "Nazanin", fontSize: 15, color: Colors.black87),
          )
        ],
      ),
    ),
  );
}
