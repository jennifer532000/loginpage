import 'package:flutter/material.dart';
import 'comp/round.dart';
import 'package:login_page/screen/log.dart';
import 'package:login_page/screen/reg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
//          WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
//          ChatScreen.id: (context) => ChatScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text('Project Portpollio'),
            ),
            backgroundColor: Colors.blue),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("image/p.png"),
                ),
//                Text(
//                  "Dainy & Stalin Coutinho",
//                  style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    fontSize: 26.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//                Text(
//                  "SD ENTERPRISES",
//                  style: TextStyle(
//                      fontFamily: 'SourceSansPro',
//                      fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.white70,
//                      letterSpacing: 2.5),
//                ),
//                FlatButton(
//                  color: Colors.blue,
//                  textColor: Colors.white,
//                  disabledColor: Colors.grey,
//                  disabledTextColor: Colors.black,
//                  padding: EdgeInsets.all(8.0),
//                  splashColor: Colors.blueAccent,
//                  onPressed: () {
//                    /*...*/
//                  },
//                  child: Text(
//                    "Login",
//                    style: TextStyle(fontSize: 20.0),
//                  ),
//                ),
                RoundedButton(
                  title: 'Log In',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                RoundedButton(
                  title: 'Register',
                  colour: Colors.blueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
                SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    )),
//                Card(
//                  color: Colors.white,
//                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
//                  child: ListTile(
//                    leading: Icon(
//                      Icons.phone,
//                      color: Colors.teal,
//                    ),
//                    title: Text(
//                      '+91 953 566 9297 / +91 809 534 0253',
//                      style: TextStyle(
//                        fontFamily: 'SourceSansPro',
//                        fontSize: 14.0,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.teal,
//                      ),
//                    ),
//                  ),
//                ),
//                Card(
//                  color: Colors.white,
//                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
//                  child: ListTile(
//                    leading: Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    title: Text(
//                      'sdenterprises2122@gmail.com',
//                      style: TextStyle(
//                        fontFamily: 'SourceSansPro',
//                        fontSize: 15.0,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.teal,
//                      ),
//                    ),
//                  ),
//                ),
              ]),
        ),
      ),
    );
  }
}
