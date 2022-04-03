import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String url = 'https://github.com/Apoorv-cloud?tab=repositories';

class Projects extends StatelessWidget {
  showProject(Color cardColor, String projectName, String projectStatus) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        color: cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text(
                projectName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, bottom: 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.white,
                child: Text(projectStatus),
                onPressed: _launchURL,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // ignore: deprecated_member_use
          leading: FlatButton(
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('PROJECTS'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            showProject(
                Colors.orange, 'VisionI-Flight for sight', 'Check it out'),
            showProject(
                Colors.green, 'CalmU-Meditation & Yoga', 'Check it out'),
            showProject(Colors.pink, 'Difesa-Women Security', 'Check it out'),
            showProject(Colors.red, 'Special_Chat', 'Check it out'),
            showProject(Colors.purple, 'Blind_Chess', 'Check it out'),
            showProject(Colors.lightBlue, 'Colour_Smash', 'Check it out')
          ],
        ),
      ),
    );
  }
}

void _launchURL() async {
  if (!await launch(url)) throw 'Could not launch $url';
}
