import 'package:flutter/material.dart';
import 'package:hub/src/screens/CategoryPage.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
import 'listEstabelecimento.dart';
import 'package:hub/src/screens/Home.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeEventos(),
  ));
}

class HomeEventos extends StatefulWidget {
  @override
  _HomeEventosState createState() => _HomeEventosState();
}

class _HomeEventosState extends State<HomeEventos> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      backgroundColor: Colors.white,
      
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                
                child: Column(
                  
                  children: <Widget>[
                    SizedBox(height: 30.0,),
                    Text(
                      
                      'FEV',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    
                    dateItem('30', 'SEX', true, true),
                    SizedBox(height: 16.0,),
                    dateItem('15', 'SAB', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('16', 'DOM', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('17', 'SEG', false, false),
                    SizedBox(height: 16.0,),
                    dateItem('18', 'TER', false, false),
                    SizedBox(height: 16.0,),
                    dateItem('19', 'QUA', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('20', 'QUI', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('21', 'SEX', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('22', 'SAB', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('23', 'DOM', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('24', 'SEG', false, true),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30.0,),
                    
                   
                    SizedBox(height: 16.0,),
                    dayItem('Evento 1', 'assets/images/01.jpg', '16', 'SEG'),
                    SizedBox(height: 16.0,),
                    dayItem('Evento 2', 'assets/images/02.jpg', '19', 'TER'),
                    SizedBox(height: 16.0,),
                    dayItem('Evento 3', 'assets/images/03.jpg', '20', 'QUA'),
                    SizedBox(height: 16.0,),
                    dayItem('Evento 4', 'assets/images/04.jpg', '21', 'QUI'),
                    SizedBox(height: 16.0,),
                    dayItem('Evento 5', 'assets/images/05.jpg', '22', 'SEX'),
                    SizedBox(height: 8.0,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationDotBar ( 
        items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.description, onTap: () {Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Home())); }),

         BottomNavigationDotBarItem(icon: Icons.description, onTap: () {Navigator.push(
                                context, MaterialPageRoute(builder: (context) => HomeEventos())); }),

        BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () { Navigator.push(
                                context, MaterialPageRoute(builder: (context)=>CategoryPage()));}),

        BottomNavigationDotBarItem(icon: Icons.timer, onTap: () {}),
       
      ],
      
  ),
    );
  }

  Widget dateItem(String date, String day, bool selected, bool available) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: selected ? Color(0xFFC62828) : Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 5.0,),
          Text(date,
            style: TextStyle(
              color: available ? selected ? Colors.white : Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          ),
          SizedBox(height: 5.0,),
          Text(day,
              style: TextStyle(
                  color: available ? selected ? Colors.white : Colors.black : Colors.grey,
                  fontSize: 10.0
              )
          ),
          SizedBox(height: 5.0,),
        ],
      ),
    );
  }

  Widget dayItem(String name, String img, String date, String day){
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: 275.0,
            height: 275.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.contain,
              )
            ),
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: Container(
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8.0,),
                  Text(date,
                  style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    day,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0
                    ),
                  ),
                  SizedBox(height: 8.0,),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12.0,
            left: 12.0,
            child: Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  shadows: <Shadow> [
                    Shadow(
                      blurRadius: 10.0,
                    )
                  ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}