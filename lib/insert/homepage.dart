import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Homepagework();
  }

}

class Homepagework extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
           centerTitle: true ,
           title: new Text("Home"),
        ),
        bottomNavigationBar: Container(
            color: Colors.blue,
            child: TabBar(
              tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.map)),
              Tab(icon: Icon(Icons.account_box)),
              Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
        body: TabBarView(
          children: [
            new Center(child: Text("Home", textAlign: TextAlign.center)),
            new Center(child: Text("Notify", textAlign: TextAlign.center)),
            new Center(child: Text("Map", textAlign: TextAlign.center)),
            new Center(child: Text("Profile", textAlign: TextAlign.center)),
            new Center(child: Text("Setup", textAlign: TextAlign.center)),
          ]
        )
      ),
    );
  }

}