import 'package:flutter/material.dart';
import 'MyAppNavigator.dart';
import 'home.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class RegBloodResult extends StatefulWidget {
  const RegBloodResult({super.key});
  @override
  State<RegBloodResult> createState() => _RegBloodResultState();
}

class _RegBloodResultState extends State<RegBloodResult> {
  var _suger = TextEditingController();
  TextEditingController _urea = TextEditingController();
  TextEditingController _bun = TextEditingController();
  TextEditingController _creatin = TextEditingController();
  TextEditingController _chol = TextEditingController();
  TextEditingController _trig = TextEditingController();
  String _msgfinal = '';
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
                    child: Text(
                      'Fasting Blood Glucose',
                      style: TextStyle(
                          color: Color(0xFFFF5A07),
                          fontSize: 12,
                          fontFamily: "Vazir"),
                    ),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(right: 5, top: 5, left: 5),
                    child: TextFormField(
                      controller: _suger,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Suger",
                          labelText: "Suger Value"),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Normal:<99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'Prediabetic:100-125',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'Diabetic:>126',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Text(
                        'Urea',
                        style: TextStyle(
                            color: Color(0xFFFF5A07),
                            fontSize: 12,
                            fontFamily: "Vazir"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(right: 5, top: 5, left: 5),
                      child: TextFormField(
                        controller: _urea,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Urea",
                            labelText: "Urea"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '12-45',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Text(
                        'BUN',
                        style: TextStyle(
                            color: Color(0xFFFF5A07),
                            fontSize: 12,
                            fontFamily: "Vazir"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(right: 5, top: 5, left: 5),
                      child: TextFormField(
                        controller: _bun,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "BUN",
                            labelText: "BUN"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '5.6-21',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Text(
                        'Creatinic',
                        style: TextStyle(
                            color: Color(0xFFFF5A07),
                            fontSize: 12,
                            fontFamily: "Vazir"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(right: 5, top: 5, left: 5),
                      child: TextFormField(
                        controller: _creatin,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Creatinic",
                            labelText: "Creatinic"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '0.5-1.4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Text(
                        'Total Cholestrol',
                        style: TextStyle(
                            color: Color(0xFFFF5A07),
                            fontSize: 12,
                            fontFamily: "Vazir"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 46),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(right: 5, top: 5, left: 1),
                      child: TextFormField(
                        controller: _chol,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Total Cholestrol",
                            labelText: "Total Cholestrol"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Desirable:<200',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'Borderline: 200-240',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'High : >240',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Text(
                        'Triglycerides',
                        style: TextStyle(
                            color: Color(0xFFFF5A07),
                            fontSize: 12,
                            fontFamily: "Vazir"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 62),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(right: 5, top: 5, left: 1),
                      child: TextFormField(
                        controller: _trig,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Triglycerides",
                            labelText: "Triglycerides"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Desirable:<200',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'Borderline: 200-400',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        ),
                        Text(
                          'High : >400',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Vazir"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Text(_msgfinal),
            )
          ],
        ),
        bottomNavigationBar: MyAppNavigator(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              var newSuger = int.parse(_suger.text);
              if (newSuger > 250) {
                setState(() {
                  _msgfinal = "You have many problem. please leave cocka";
                });
              }
            },
            // onPressed: newFn(),
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
