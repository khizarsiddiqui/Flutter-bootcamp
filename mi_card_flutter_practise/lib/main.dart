import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/icon.jpg'),
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Khizar H.S',
                style: TextStyle(
                  fontFamily: 'Anta',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 17.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 180.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      size: 30.0,
                      color: Colors.teal.shade400,
                    ),
                  title: Text(
                      '+92 317 8906226',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                      Icons.email_outlined,
                      size: 30.0,
                      color: Colors.teal.shade400,
                    ),
                  title: Text(
                      'khizarsiddiqui10@gmail.com',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}