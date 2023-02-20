//import 'package:blue_cross/widgets/lengthActions.dart';
//import 'package:blue_cross/widgets/scaleDrawer.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/lengthAction.dart';
import '../widgets/scaleDrawer.dart';

// ignore: use_key_in_widget_constructors
class LengthConversionScreen extends StatelessWidget {
  static const routeName = '/length-conversion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: AppDrawer(),
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Convert Length',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              shadows: [
                Shadow(
                  blurRadius: 10.0, // shadow blur
                  color: Colors.black, // shadow color
                  offset: Offset(1.0, 1.5), // how much shadow will be shown
                ),
              ],
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'To',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LengthActions(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
