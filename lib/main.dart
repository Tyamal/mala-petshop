import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(PetShopApp());
}

class PetShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shop Mala',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
