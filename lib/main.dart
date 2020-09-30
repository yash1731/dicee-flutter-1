import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  return runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        // '/DicePage': (context) => DicePage(),
        '/home': (context) => DicePage(),
        '/Bpage': (context) => Bpage(),
        '/Cpage': (context) => Cpage(),
        '/Dpage': (context) => Dpage(),
        '/Epage': (context) => Epage(),
        '/Fpage': (context) => Fpage(),
        '/Gpage': (context) => Gpage(),
        '/Hpage': (context) => Hpage(),
      },
      // routes: <String, WidgetBuilder>{'/Cpage': (context) => Cpage()},
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: DicePage(),
      ),
    ),
  );
}
