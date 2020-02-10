import 'package:flutter/material.dart';
import 'package:lps_insight/screens/sdm_screen.dart';

class MainMenu extends StatelessWidget {
  List<MenuUtamaItem> menuUtamaItem = [
    MenuUtamaItem(
      title:'Absence',
      icon: Icons.timer,
      colorBox: Colors.blue[200],
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'SDM',
      icon: Icons.people,
      colorBox: Colors.blue,
      iconColor: Colors.white,
      dest: SdmScreen(),
    ),
    MenuUtamaItem(
      title:'Meeting Attendance',
      icon: Icons.nature_people,
      colorBox: Colors.blue[900],
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'Helpdesk',
      icon: Icons.help,
      colorBox: Colors.purple,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'Leave Request',
      icon: Icons.time_to_leave,
      colorBox: Colors.orange,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'Payslip',
      icon: Icons.account_balance,
      colorBox: Colors.lightGreen,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'Compliance',
      icon: Icons.local_bar,
      colorBox: Colors.cyan,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title:'Reservasi  ',
      icon: Icons.account_balance_wallet,
      colorBox: Colors.blueGrey,
      iconColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/hexagon.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              width: 170,
              height: 80,
              child: Image.asset('images/insight_splash.png'),
            ),
            SizedBox(height: 20),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                    size: 50,
                  ),
                  Text("Ade Putra\nFlutter Developer"),

                ],
            ),
            SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: menuUtamaItem,
              ),
            ),
            SizedBox(height: 40,),
            Footer()
          ],
        ),
      ),
    );
  }
}

class MenuUtamaItem extends StatelessWidget{

  MenuUtamaItem({this.title,this.icon,this.colorBox,this.iconColor, this.dest});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  final StatefulWidget dest;

  @override
  Widget build (BuildContext context){
    return GestureDetector(
        onTap: (){
          Navigator.push(context,
              new MaterialPageRoute(builder: (context)=>dest)
          );
        },
        child:Column(
          children: <Widget>[
            Container(

              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  color: colorBox,
                  shape: BoxShape.circle
              ),
              child: Icon(icon,color: iconColor,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
            ),
            Text(title,style: TextStyle(fontSize: 12),textAlign: TextAlign.center,textScaleFactor: 0.9)
          ],
        )
    );
  }
}

class Footer extends StatelessWidget{
  @override
  Widget build (BuildContext context){

    return Center(

        child : Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment(0, 1.0),
          child: Card(
            child: Column(

              children: <Widget>[

                ListTile(
                  leading: Image.asset('images/lps.jpg'),
                  isThreeLine: true,
                  title: Text('Lembaga Penjamin Simpanan',textScaleFactor: 0.9),
                  subtitle: Text('Jalan Jenderal Sudirman Kav 52-52 \nJakarta 12190, Indonesia',textScaleFactor: 0.9),

                )
              ],
            ),
          ),
        )
    );
  }
}