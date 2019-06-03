import 'package:flutter_web/material.dart';

class Perk3 extends StatelessWidget {
  const Perk3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Every aspect is covered",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFF8591B0),
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            
            "Everything from prototyping to project managment, our team will take care of that for you and keep you updated every step of the way.",
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
