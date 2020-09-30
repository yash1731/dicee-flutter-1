import 'package:flutter/material.dart';

// ! NEXT LETTER

class ReusabbleCard extends StatelessWidget {
  ReusabbleCard({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
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
    );
  }
}

// ! TO CALL IMAGE

class Images extends StatelessWidget {
  const Images({
    Key key,
    @required this.imageIndex,
    @required this.imageNum,
  }) : super(key: key);

  final List<String> imageIndex;
  final int imageNum;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        imageIndex[imageNum],
        // 'images/a$leftDiceNumber.gif',
        height: 120,
        width: 220,
        //color: Colors.white,
        colorBlendMode: BlendMode.darken,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

// ! NEXT LETTER BUTTON

class NextLatter extends StatelessWidget {
  NextLatter({@required this.onPress});
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
          'NEXT',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

// ! NEXT PIC CLICK BUTTON

class NextPic extends StatelessWidget {
  NextPic({@required this.onPress});
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 20, right: 20),
        highlightColor: Colors.yellow[600],
        elevation: 8,
        highlightElevation: 8,
        animationDuration: Duration(milliseconds: 2000),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPress,
        child: Text(
          'CLICK',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
