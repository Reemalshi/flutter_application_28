import 'package:flutter/material.dart';
import 'package:flutter_application_28/screen/home_screen.dart';
import 'package:flutter_application_28/screen/product_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Productscreen(),
    );
  }
}