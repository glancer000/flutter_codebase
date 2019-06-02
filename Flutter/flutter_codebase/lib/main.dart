import 'package:flutter_web/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';
import 'widgets/perk1.dart';
import 'widgets/perk2.dart';
import 'widgets/perk3.dart';

void main() => runApp(MaterialApp(
      title: 'Codebase - Cross-development Studio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 600,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FractionallySizedBox(
                  alignment: Alignment.centerRight,
                  widthFactor: .6,
                  child: Image.network("assets/codebase-illustration.png",
                      scale: .85),
                ),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: .6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Cross-Platform",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0))),
                        RichText(
                          text: TextSpan(
                              text: "Devevelopment Team",
                              style: TextStyle(
                                  fontSize: 60, color: Color(0xFF8591B0)),
                              children: [
                                TextSpan(
                                    text: "Britu",
                                    style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87))
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 20),
                          child: Text("BUILD ONCE, DEPLOY EVERYWHERE"),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        // Search()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
         SizedBox(
            height: 600,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FractionallySizedBox(
                  alignment: Alignment.centerRight,
                  widthFactor: .6,
                  child: Image.network("assets/codebase-illustration.png",
                      scale: .85),
                ),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: .6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Perk1()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  final myText = "This is a test";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Britu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("BUILD ONCE, DEPLOY EVERYWHERE"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/codebase-illustration.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            // Search(),
            Perk1(),
            Perk2(),
            Perk3(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
