import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id='Login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 170,
              height: 80,
              child: Image.asset('images/insight_splash.png'),

            ),
            SizedBox(height: 30),
            Center(child: Text('Welcome to LPS Insight')),
            SizedBox(height: 60),
            TextFormField(onChanged: (value){},
              decoration:  InputDecoration(
                  border: UnderlineInputBorder(),
                  //filled: true,
                  hintText: 'Username (tanpa @lps.go.id)'
              ),
            ),
            SizedBox(height: 10),
            PasswordField(
              //color: Colors.green,
              hintText: 'Password',
              hasFloatingPlaceholder: false,
            ),
            SizedBox(height: 40),
            FlatButton(
              color: Color(0xFFda8824),
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Color(0xFFda8824),
              onPressed: () {
                Navigator.pushNamed(context,HomeScreen.id);
              },
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 20.0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
