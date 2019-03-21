
import 'package:flutter/material.dart';
import 'ViewTemplate.dart';
import 'ViewSearch.dart';
void main() {
runApp(MaterialApp(
    title: 'Confortech',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: ViewSearch(), // becomes the route named '/'
  ));
}
