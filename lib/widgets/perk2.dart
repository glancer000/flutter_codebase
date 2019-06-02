import 'package:flutter_web/material.dart';

class Perk2 extends StatelessWidget {
  const Perk2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "All major platforms covered",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFF8591B0),
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            
            "Developing in Flutter, Google's cross-platform UI toolkit, creates native apps for iOS, Android, desktop, the web and even bedded devices all from a single codebase. All at a silky smooth 60fps, which means your customers will have a great user experience.",
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
