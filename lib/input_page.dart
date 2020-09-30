import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'reusable_card.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<String> imageIndex = [
    'images/a1.gif',
    'images/a2.gif',
    'images/a3.gif',
    'images/a4.gif',
    'images/a5.gif',
    'images/a6.gif',
    'images/a7.gif',
    'images/a8.gif',
    'images/a9.gif',
    'images/a10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 50),
          child: Column(
            children: [
              ReusabbleCard(text: 'A'),
              NextLatter(
                onPress: () {
                  playSound();
                  Navigator.pushNamed(context, '/Bpage');
                },
              ),
              Images(imageIndex: imageIndex, imageNum: imageNum),
              NextPic(
                onPress: () {
                  playSound();
                  setState(() {
                    imageNum++;
                  });
                },
              )
            ],
          ),
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
  List<String> imageIndex = [
    'images/b1.gif',
    'images/b2.gif',
    'images/b3.gif',
    'images/b4.gif',
    'images/b5.gif',
    'images/b6.gif',
    'images/b7.gif',
    'images/b8.gif',
    'images/b9.gif',
    'images/b10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        color: Colors.blueGrey[100],
        child: Column(
          children: [
            ReusabbleCard(
              text: ('B'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Cpage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

//! BACK BUTTON

class BackButton extends StatelessWidget {
  BackButton({@required this.onPress});
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
        highlightColor: Colors.yellow[600],
        // elevation: 8,
        highlightElevation: 8,
        animationDuration: Duration(milliseconds: 2000),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        // splashColor: Colors.redAccent,
        onPressed: onPress,
        child: Text(
          'BACK',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ));
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
  List<String> imageIndex = [
    'images/c1.gif',
    'images/c2.gif',
    'images/c3.gif',
    'images/c4.gif',
    'images/c5.gif',
    'images/c6.gif',
    'images/c7.gif',
    'images/c8.gif',
    'images/c9.gif',
    'images/c10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'C'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Bpage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Dpage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
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
  List<String> imageIndex = [
    'images/d1.gif',
    'images/d2.gif',
    'images/d3.gif',
    'images/d4.gif',
    'images/d5.gif',
    'images/d6.gif',
    'images/d7.gif',
    'images/d8.gif',
    'images/d9.gif',
    'images/d10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'D'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Cpage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Epage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
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
  List<String> imageIndex = [
    'images/e1.gif',
    'images/e2.gif',
    'images/e3.gif',
    'images/e4.gif',
    'images/e5.gif',
    'images/e6.gif',
    'images/e7.gif',
    'images/e8.gif',
    'images/e9.gif',
    'images/e10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'E'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Dpage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Fpage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

// ! F PAGE

void mainF() {
  return runApp(
    MaterialApp(
      //routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Fpage(),
      ),
    ),
  );
}

class Fpage extends StatefulWidget {
  Fpage({Key key}) : super(key: key);

  @override
  _FpageState createState() => _FpageState();
}

class _FpageState extends State<Fpage> {
  List<String> imageIndex = [
    'images/f1.gif',
    'images/f2.gif',
    'images/f3.gif',
    'images/f4.gif',
    'images/f5.gif',
    'images/f6.gif',
    'images/f7.gif',
    'images/f8.gif',
    'images/f9.gif',
    'images/f10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'F'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Epage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Gpage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

// ! G PAGE

void mainG() {
  return runApp(
    MaterialApp(
      //routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Gpage(),
      ),
    ),
  );
}

class Gpage extends StatefulWidget {
  Gpage({Key key}) : super(key: key);

  @override
  _GpageState createState() => _GpageState();
}

class _GpageState extends State<Gpage> {
  List<String> imageIndex = [
    'images/g1.gif',
    'images/g2.gif',
    'images/g3.gif',
    'images/g4.gif',
    'images/g5.gif',
    'images/g6.gif',
    'images/g7.gif',
    'images/g8.gif',
    'images/g9.gif',
    'images/g10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'G'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Fpage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Hpage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

// ! H PAGE

void mainH() {
  return runApp(
    MaterialApp(
      //routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Hpage(),
      ),
    ),
  );
}

class Hpage extends StatefulWidget {
  Hpage({Key key}) : super(key: key);

  @override
  _HpageState createState() => _HpageState();
}

class _HpageState extends State<Hpage> {
  List<String> imageIndex = [
    'images/h1.gif',
    'images/h2.gif',
    'images/h3.gif',
    'images/h4.gif',
    'images/h5.gif',
    'images/h6.gif',
    'images/h7.gif',
    'images/h8.gif',
    'images/h9.gif',
    'images/h10.gif',
  ];
  int imageNum = 0;

  int leftDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // leftDiceNumber = Random().nextInt(10) + 1;
      imageNum++;
    });
  }

  void playSound() {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 0, 50),
        // color: Colors.white,
        child: Column(
          children: [
            ReusabbleCard(text: 'H'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BackButton(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Gpage');
                  },
                ),
                NextLatter(
                  onPress: () {
                    playSound();
                    Navigator.pushNamed(context, '/Ipage');
                  },
                ),
              ],
            ),
            Images(imageIndex: imageIndex, imageNum: imageNum),
            NextPic(
              onPress: () {
                playSound();
                setState(() {
                  imageNum++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
