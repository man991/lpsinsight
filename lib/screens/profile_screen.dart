import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/img_avatar.png'),
              ),
              Text(
                'Ade Putra',
                style: TextStyle(
                    //fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  //fontFamily: 'SourceSans',
                  backgroundColor: Colors.transparent,
                  color: Colors.grey,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                //color: Colors.white card default with white color,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.business,
                    color: Color(0xFFda8824),
                  ),
                  title: Text(
                    'Group IT',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      //fontFamily: 'SourceSans',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                //color: Colors.white card default with white color,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Color(0xFFda8824),
                  ),
                  title: Text(
                    '+62-81288908489',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      //fontFamily: 'SourceSans',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                //color: Colors.white, card default with white color
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(0xFFda8824),
                  ),
                  title: Text(
                    'adeputra@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade900,
                        //fontFamily: 'SourceSans'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              FlatButton(
                color: Color(0xFFda8824),
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Color(0xFFda8824),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Log Out",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
