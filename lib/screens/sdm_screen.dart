import 'package:flutter/material.dart';
import 'package:lps_insight/components/constants.dart';

class SdmScreen extends StatefulWidget {
  @override
  _SdmScreenState createState() => _SdmScreenState();
}

class _SdmScreenState extends State<SdmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDM'),
        backgroundColor: Color(0xFFda8824),
        actions: <Widget>[
          PopupMenuButton<CustomPopupMenu>(
            // onSelected: choiceAction,
            icon: Icon(Icons.list, size: 35,),
            itemBuilder: (BuildContext context){
              return choices.map((CustomPopupMenu choice) {
                return PopupMenuItem<CustomPopupMenu>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },

          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[
              GraphCard(
                cardTitle: 'Statistik Usia',
              ),
              GraphCard(
                cardTitle: 'Statistik Masa Kerja',
              ),
              GraphCard(
                cardTitle: 'Statistik Masa Kerja',
              ),
            ],
          )),

        ],
      ),
    );
  }
}

class CustomPopupMenu {
  CustomPopupMenu({this.title, this.icon});
  String title;
  IconData icon;
}


List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'Home', icon: Icons.home),
  CustomPopupMenu(title: 'Bookmarks', icon: Icons.bookmark),
  CustomPopupMenu(title: 'Settings', icon: Icons.settings),
];

void choiceAction(String choice){
  print('selected ');
}

class GraphCard extends StatelessWidget {
  GraphCard({this.cardTitle});
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    cardTitle,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
