import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_items.dart';
import 'cards_radio.dart';
import 'navig_side.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int isClickedCon = 0;
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    var TabInd = 0;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 1, 42),
        body: SafeArea(
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: NavigBarSide(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          Text(
                            ' Miau',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 41, 109),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: const Text(
                        'Popular',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 0;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 0 ? true : false),
                          ),
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 1;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 1 ? true : false),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 2;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 2 ? true : false),
                          ),
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 3;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 3 ? true : false),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 4;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 4 ? true : false),
                          ),
                          GestureDetector(
                            onTap: () {
                              isClickedCon = 5;
                              setState(() {});
                            },
                            child: CardRadioUser(
                                isClicked: isClickedCon == 5 ? true : false),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    bottomItems(),
                  ],
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
