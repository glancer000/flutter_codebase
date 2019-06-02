import 'package:flutter_web/material.dart';

class Perk1 extends StatelessWidget {
  const Perk1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "You Gain a Complete Development Team",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFF8591B0),
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            
            "Have the piece of mind that you have an experienced team right at your fingertips. Codebase has a complete development team ready to tackle your project. Everything from UI, UX, Front-End & Back-End development, we can handle it. ",
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontFamily: "Montserrat-Regular"),
          ),
        ),
      ],
    ));
  }
}
