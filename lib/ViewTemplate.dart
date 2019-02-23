import 'package:flutter/material.dart';
import 'main.dart';

class ViewTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Mon Panier"),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ]),
        body: Stack(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListView(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blueAccent,
                child: Text(
                  "Départ train dans: 15:00",
                textAlign: TextAlign.center, 
                style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            )
          ],
        ));
  }
}
