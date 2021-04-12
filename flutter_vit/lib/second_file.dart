import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: PreferredSize(
        preferredSize: Size(10, 200.0),
        child: AppBar(
          //toolbarHeight: 200,
          automaticallyImplyLeading: false,
          leading: Icon(Icons.account_tree),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(70.0, 70.0),
            ),
          ),
          elevation: 0.25,
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              "Heading",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .apply(color: Colors.white),
            ),
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.ac_unit),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  tooltip: 'Nav Menu',
                  hoverColor: Colors.black,
                ),
                Icon(Icons.access_alarm),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20),
                color: Colors.pink,
                height: 450,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Text("Number ${generateRandom()}"),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20),
                color: Colors.blue,
                height: 450,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Text("Number ${generateRandom()}"),
                    ],
                  ),
                ),
              ),
            ] //),
            ),
      ),
    );
  }

  int generateRandom() {
    var isRandom = Random();
    int i = isRandom.nextInt(20);
    return i;
  }
}
