
import 'package:flutter/material.dart';
import 'ViewTemplate.dart';

void main() {
runApp(MaterialApp(
    title: 'Confortech',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: ViewTemplate(), // becomes the route named '/'
  ));
}
