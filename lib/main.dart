import 'package:flutter/material.dart';
import 'package:flutter_workshop/projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Workshop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PORTFOLIO'),
        backgroundColor: Colors.blue.shade900,
      ), //AppBar
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            //height: 200,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.call),
                      minRadius: 35.0,
                      backgroundColor: Colors.blue.shade900,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      backgroundImage: AssetImage(
                        'lib/assets/ap.png',
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.message),
                      minRadius: 35.0,
                      backgroundColor: Colors.blue.shade900,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Apoorv Maheshwari',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ), //Container

          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Bio', style: TextStyle(color: Colors.blue, fontSize: 24)),
                Divider(
                  height: 15,
                  thickness: 2,
                  //color: Colors.black
                ),
                Text(
                    'Flutter Developer | Certified ISO/IEC 27001 Information Security Associate™ | Internship Trainee @AI NXT | Senior Coordinator @Blockchain Research Lab'),
                SizedBox(
                  width: double.infinity,
                  height: 15,
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
                  subtitle: Text('@maheshwari__apoorv'),
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
            ), //Column
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'PROJECTS',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Projects(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
