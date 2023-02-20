//import 'package:blue_cross/widgets/scaleDrawer.dart';
//import 'package:blue_cross/widgets/temperatureActions.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../widgets/scaleDrawer.dart';
import '../widgets/temperature.dart';

// ignore: use_key_in_widget_constructors
class TemperatureConversionScreen extends StatelessWidget {
  static const routeName = '/temperature-conversion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Row(
          // ignore: duplicate_ignore
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Convert Temperature',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.black45, // shadow color
                    offset: Offset(1.0, 1.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 135,
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
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
                        height: 8,
                      ),
                      TemperatureActions(),
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
