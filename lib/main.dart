import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Future launchhURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      print("Can't not launch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 25, 25, 25),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/moon.jpg"),
                radius: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Ramez Medhat",
                  style: GoogleFonts.sen(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange[900],
                  ),
                ),
              ),
            ),
            Text(
              "Games, Web, and Apps devolper, amateur in programming.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sen(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      launchhURL("https://www.instagram.com/r6mez/");
                    },
                    child: Icon(
                      MdiIcons.instagram,
                      color: Colors.white70,
                      size: 35,
                    ),
                    shape: CircleBorder(),
                    color: Colors.orange[900],
                    height: 50,
                  ),
                  FlatButton(
                    onPressed: () {
                      launchhURL("https://twitter.com/RamezDev");
                    },
                    child: Icon(
                      MdiIcons.twitter,
                      color: Colors.white70,
                      size: 35,
                    ),
                    shape: CircleBorder(),
                    height: 50,
                    color: Colors.orange[900],
                  ),
                  FlatButton(
                    onPressed: () {
                      launchhURL("https://www.facebook.com/r6mez/");
                    },
                    child: Icon(
                      MdiIcons.facebook,
                      color: Colors.white70,
                      size: 35,
                    ),
                    shape: CircleBorder(),
                    height: 50,
                    color: Colors.orange[900],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
