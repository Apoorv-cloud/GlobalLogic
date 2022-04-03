import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'FLutter Workshop',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // A widget which will be started on application startup
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('PORTFOLIO'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.call),
                      minRadius: 35,
                      backgroundColor: Colors.blue.shade900,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('lib/crop.jpg'),
                      minRadius: 60,
                      backgroundColor: Colors.blue.shade900,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.message),
                      minRadius: 35,
                      backgroundColor: Colors.blue.shade900,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Apoorv Maheshwari',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bio',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                Text('Flutter Developer | Certified ISO/IEC 27001 Information Security Associate™ | Internship Trainee @AI NXT | Senior Coordinator @Blockchain Research Lab'),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(Icons.mail, color: Colors.blue),
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  subtitle: Text('apoorv1910042@akgec.ac.in'),
                ),
                ListTile(
                  leading: Icon(Icons.message, color: Colors.blue),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  subtitle: Text('maheshwari__apoorv'),
                ),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.blue),
                  title: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  subtitle: Text('+91 8755289525'),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              'PROJECTS',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
