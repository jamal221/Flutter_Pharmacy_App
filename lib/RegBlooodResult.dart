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
  String _msgfinal_suger = '';
  String _msgfinal_urea = '';
  String _msgfinal_bun = '';
  String _msgfinal_creatin = '';
  String _msgfinal_chol = '';
  String _msgfinal_trig = '';
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('Suger Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_suger,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('Urea Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_urea,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('BUN Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_bun,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('Creatinic Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_creatin,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('Total Cholestrol Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_chol,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Text('Triglycerides Result:  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Vazir")),
                          Text(_msgfinal_trig,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 4, 4),
                                  fontSize: 12,
                                  fontFamily: "Vazir")),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: MyAppNavigator(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              var newSuger = int.parse(_suger.text);
              if (newSuger > 125) {
                setState(() {
                  _msgfinal_suger = "You have many problem. please leave cocka";
                });
              } else {
                setState(() {
                  _msgfinal_suger = "no problem";
                });
              }
              var newurea = int.parse(_urea.text);
              if (newurea > 45 || newurea < 12) {
                setState(() {
                  _msgfinal_urea = "You have problem in Urea";
                });
              } else {
                setState(() {
                  _msgfinal_urea = "no problem";
                });
              }
              var newbun = int.parse(_bun.text);
              if (newbun > 21 || newbun < 5.6) {
                setState(() {
                  _msgfinal_bun = "You have problem in BUN";
                });
              } else {
                setState(() {
                  _msgfinal_bun = "no problem";
                });
              }
              var newcr = int.parse(_creatin.text);
              if (newcr > 1.4 || newcr < 0.5) {
                setState(() {
                  _msgfinal_creatin = "You have problem in Creatin budy";
                });
              } else {
                setState(() {
                  _msgfinal_creatin = "no problem";
                });
              }
              var newchol = int.parse(_chol.text);
              if (newchol > 1.4 || newchol < 0.5) {
                setState(() {
                  _msgfinal_chol = "You have problem in Cholestrol";
                });
              } else {
                setState(() {
                  _msgfinal_chol = "no problem";
                });
              }
              var newtrig = int.parse(_trig.text);
              if (newtrig > 1.4 || newtrig < 0.5) {
                setState(() {
                  _msgfinal_trig = "You have problem in your Triglycerides";
                });
              } else {
                setState(() {
                  _msgfinal_trig = "no problem";
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
