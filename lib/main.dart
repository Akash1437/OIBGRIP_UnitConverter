//import 'package:blue_cross/screens/Lconversion.dart';
//import 'package:blue_cross/screens/Tconversion.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter_app/screens/Lconversion.dart';
import 'package:unit_converter_app/screens/Tconversion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter ',
        theme: ThemeData(
          primarySwatch: Colors.blue, //teal
          secondaryHeaderColor: Colors.red,
        ),
        home: LengthConversionScreen(),
        routes: {
          LengthConversionScreen.routeName: (ctx) => LengthConversionScreen(),
          TemperatureConversionScreen.routeName: (ctx) =>
              TemperatureConversionScreen()
        },
      ),
    );
  }
}
