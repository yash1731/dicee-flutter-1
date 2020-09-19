import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/Bpage': (context) => Bpage(),
        '/Cpage': (context) => Cpage(),
        '/Dpage': (context) => Dpage(),
        '/Epage': (context) => Epage()
      },
      // routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 2, 0, 50),
        child: Column(
          children: [
            Text(
              'A',
              style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.amber,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                    ),
                  ]),
            ),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
                highlightColor: Colors.yellow[600],
                // elevation: 8,
                highlightElevation: 8,
                animationDuration: Duration(milliseconds: 2000),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                // splashColor: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/Bpage');
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: Image.asset(
                'images/a$leftDiceNumber.gif',
                height: 120,
                width: 220,
                //color: Colors.white,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
              highlightColor: Colors.yellow[600],
              elevation: 8,
              highlightElevation: 8,
              animationDuration: Duration(milliseconds: 2000),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                changeDiceFace();
              },
              child: Text(
                'CLICK',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ! 'B' page

void mainB() {
  return runApp(
    MaterialApp(
      // routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Bpage(),
      ),
    ),
  );
}

class Bpage extends StatefulWidget {
  Bpage({Key key}) : super(key: key);

  @override
  _BpageState createState() => _BpageState();
}

class _BpageState extends State<Bpage> {
  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(100, 2, 0, 50),
        color: Colors.blueGrey[100],
        child: Column(
          children: [
            Text(
              'B',
              style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.amber,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                    ),
                  ]),
            ),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
                highlightColor: Colors.yellow[600],
                // elevation: 8,
                highlightElevation: 8,
                animationDuration: Duration(milliseconds: 2000),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                // splashColor: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/Cpage');
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: Image.asset(
                'images/b$leftDiceNumber.gif',
                height: 120,
                width: 220,
                // color: Colors.white,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
              highlightColor: Colors.yellow[600],
              elevation: 8,
              highlightElevation: 8,
              animationDuration: Duration(milliseconds: 2000),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                changeDiceFace();
              },
              child: Text(
                'CLICK',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ! C PAGE

void mainC() {
  return runApp(
    MaterialApp(
      // routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Cpage(),
      ),
    ),
  );
}

class Cpage extends StatefulWidget {
  Cpage({Key key}) : super(key: key);

  @override
  _CpageState createState() => _CpageState();
}

class _CpageState extends State<Cpage> {
  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(100, 2, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            Text(
              'C',
              style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.amber,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                    ),
                  ]),
            ),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
                highlightColor: Colors.yellow[600],
                // elevation: 8,
                highlightElevation: 8,
                animationDuration: Duration(milliseconds: 2000),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                // splashColor: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/Dpage');
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: Image.asset(
                'images/c$leftDiceNumber.gif',
                height: 120,
                width: 220,
                // color: Colors.white,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
              highlightColor: Colors.yellow[600],
              elevation: 8,
              highlightElevation: 8,
              animationDuration: Duration(milliseconds: 2000),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                changeDiceFace();
              },
              child: Text(
                'CLICK',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ! D PAGE

void mainD() {
  return runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Dpage(),
      ),
    ),
  );
}

class Dpage extends StatefulWidget {
  Dpage({Key key}) : super(key: key);

  @override
  _DpageState createState() => _DpageState();
}

class _DpageState extends State<Dpage> {
  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(100, 2, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            Text(
              'D',
              style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.amber,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                    ),
                  ]),
            ),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
                highlightColor: Colors.yellow[600],
                // elevation: 8,
                highlightElevation: 8,
                animationDuration: Duration(milliseconds: 2000),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                // splashColor: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/Epage');
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: Image.asset(
                'images/d$leftDiceNumber.gif',
                height: 120,
                width: 220,
                // color: Colors.white,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
              highlightColor: Colors.yellow[600],
              elevation: 8,
              highlightElevation: 8,
              animationDuration: Duration(milliseconds: 2000),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                changeDiceFace();
              },
              child: Text(
                'CLICK',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ! E PAGE

void mainE() {
  return runApp(
    MaterialApp(
      //routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Epage(),
      ),
    ),
  );
}

class Epage extends StatefulWidget {
  Epage({Key key}) : super(key: key);

  @override
  _EpageState createState() => _EpageState();
}

class _EpageState extends State<Epage> {
  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(100, 2, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            Text(
              'E',
              style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.amber,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(7.0, 8.0),
                    ),
                  ]),
            ),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
                highlightColor: Colors.yellow[600],
                // elevation: 8,
                highlightElevation: 8,
                animationDuration: Duration(milliseconds: 2000),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

                // splashColor: Colors.redAccent,
                onPressed: () {},
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Expanded(
              child: Image.asset(
                'images/e$leftDiceNumber.gif',
                height: 120,
                width: 220,
                // color: Colors.white,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
              highlightColor: Colors.yellow[600],
              elevation: 8,
              highlightElevation: 8,
              animationDuration: Duration(milliseconds: 2000),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                changeDiceFace();
              },
              child: Text(
                'CLICK',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
