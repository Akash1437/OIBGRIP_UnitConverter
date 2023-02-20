//import 'package:blue_cross/screens/Lconversion.dart';
//import 'package:blue_cross/screens/Tconversion.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/Lconversion.dart';
import '../screens/Tconversion.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text(
              'Convert Into',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.height_sharp,
              color: Colors.blueAccent,
              size: 30,
            ), //linear_scale
            title: Text(
              'Length',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.w900),
            ),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, LengthConversionScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.thermostat_auto_outlined,
              color: Colors.redAccent,
              size: 30,
            ), //thermostat_outlined
            title: Text(
              'Temperature',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.w900),
            ),
            onTap: () {
              Navigator.restorablePushNamed(
                  context, TemperatureConversionScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
