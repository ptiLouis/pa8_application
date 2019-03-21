import 'package:flutter/material.dart';
import 'main.dart';

class ViewSearch extends StatefulWidget {
  @override
  _ViewSearchState createState() => _ViewSearchState();
}

class _ViewSearchState extends State<ViewSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: GestureDetector(
                onTap: () {
                  print("Click on 'panier'");
                  // here we should redirect to basket (panier) page
                },
                child: Text("Mon Panier")),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("Click on 'search'");
                  // here we should redirect to search page
                },
              ),
            ]),
        body: Stack(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListView(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      //color: Colors.yellow,
                      child: Text("Rechercher un produit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Please enter a search term'),
                    ),
                    new MaterialButton(
                      height: 50.0,
                      minWidth: 200.0,
                      color: Colors.lightBlue,
                      onPressed: () {},
                      child: Text('Rechercher',
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0)),
                      splashColor: Color(0xFF025a01),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Coca Cola'),
                                  subtitle: Text(
                                      'Bouteille de 50mL de coca cola zero'),
                                ),
                                ButtonTheme.bar(
                                  // make buttons use the appropriate styles for cards
                                  child: ButtonBar(
                                    children: <Widget>[
                                      FlatButton(
                                        child: const Text('Ajouter au panier'),
                                        onPressed: () {/* ... */},
                                      ),
                                      FlatButton(
                                        child: const Text('Acheter'),
                                        onPressed: () {/* ... */},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Pain au chocolat'),
                                  subtitle: Text(
                                      'Pain au chocolat avec des amandes et du chocolat Lindt'),
                                ),
                                ButtonTheme.bar(
                                  // make buttons use the appropriate styles for cards
                                  child: ButtonBar(
                                    children: <Widget>[
                                      FlatButton(
                                        child: const Text('Ajouter au panier'),
                                        onPressed: () {/* ... */},
                                      ),
                                      FlatButton(
                                        child: const Text('Acheter'),
                                        onPressed: () {/* ... */},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blueAccent,
                child: GestureDetector(
                  onTap: () {
                    print(
                        "here we should ask if the visitor want to close the session");
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Départ train dans: 15:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
