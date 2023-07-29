import 'package:flutter/material.dart';
import 'MyAppNavigator.dart';
import 'home.dart';

class RegBloodResult extends StatefulWidget {
  const RegBloodResult({super.key});
  @override
  State<RegBloodResult> createState() => _RegBloodResultState();
}

class _RegBloodResultState extends State<RegBloodResult> {
  TextEditingController _suger = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'لطفا مقادیر زیر را به طور کامل پر کنید.',
            style: TextStyle(
                color: Colors.amber, fontSize: 20, fontFamily: "Vazir"),
          ),
          leading: IconButton(
            onPressed: () {
              // print("Try to use as back buttom");
              // Navigator.pop(context, true);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const homepage()),
              );
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.amber,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(12, 15, 15, 6),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(right: 5, top: 5),
                    child: TextFormField(
                      controller: _suger,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Suger",
                          labelText: "Suger Value"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: MyAppNavigator(),
        floatingActionButton: FloatingActionButton(
            onPressed: newFn,
            backgroundColor: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text("بررسی آزمایش"),
                Icon(
                  Icons.vaccines,
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
