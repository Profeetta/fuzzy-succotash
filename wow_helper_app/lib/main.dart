import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

/*
import 'dart:convert';
import 'package:http/http.dart';
import 'dart:async';

import 'rogue.dart';
import 'warrior.dart';
import 'druid.dart';
*/

void main() => runApp(MyApp());

class Classes {
  final idx;
  final name;

  Classes({
    this.idx,
    this.name,
  });

  factory Classes.fromJson(Map<String, dynamic> jsonData) {
    return Classes(
      idx: jsonData['id'],
      name: jsonData['name'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blueGrey.shade800,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: new Center(
            child: const Text(
              "World of Warcraft helper",
              style: TextStyle(fontFamily: "Vujahday", fontSize: 45),
            ),
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(value.visible ? Icons.clear : Icons.menu,
                      key: ValueKey<bool>(value.visible)),
                );
              },
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(top: 24.0, bottom: 64.0),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("images/lataus.jpg"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClassesPage(),
                      ),
                    );
                  },
                  leading: Icon(Icons.class__outlined),
                  title: Text("Class"),
                ),
                /*ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapsPage(),
                      ),
                    );
                  },
                  leading: Icon(Icons.add_location_alt_outlined),
                  title: Text("Maps"),
                ),*/
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfessionsPage(),
                      ),
                    );
                  },
                  leading: Icon(Icons.assignment_outlined),
                  title: Text("Professions"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeepMeep(),
                      ),
                    );
                  },
                  leading: Icon(Icons.priority_high_outlined),
                  title: Text("Meep"),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(fontSize: 15, color: Colors.white54),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Terms of Service | Privacy Policy"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}

class ProfessionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("images/Nagrand_Concept_Art_Peter_Lee_2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class TalentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("images/backgroundnagrand.jpg"), fit: BoxFit.cover),
            ),
          ),
          new Container(),
        ],
      ),
    );
  }
}

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Maps",
          style: TextStyle(fontSize: 30, fontFamily: "Tourney"),
        ),
      ),
      body: Column(),
    );
  }
}

class ClassesPage extends StatefulWidget {
  @override
  _ClassesPageState createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            AppBar(
              title: Text(
                "Choose your class",
                style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: "Quicksand"),
              ),
              centerTitle: true,
              backgroundColor: Colors.grey.shade900,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/rogue.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/priest.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/warrior.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/warlock.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/shaman.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/druid.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/paladin.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  "images/mage.jpg",
                  width: 160,
                  height: 160,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MeepMeep extends StatefulWidget {
  @override
  _MeepMeepState createState() => _MeepMeepState();
}

class _MeepMeepState extends State<MeepMeep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meep",
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("images/meepmeep.jpg"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey.shade400),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(80, 50),
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 20, fontFamily: "Quicksand"),
                ),
              ),
              child: Text("Ok?"),
            )
          ],
        ),
      ),
    );
  }
}
