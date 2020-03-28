import 'package:flutter/material.dart';
import 'package:hub/src/screens/CategoryPage.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
import 'package:hub/src/screens/SizeConfig.dart';
import 'package:hub/src/screens/noticias.dart';
import 'package:hub/src/screens/cidade.dart';
import 'package:hub/src/screens/acena.dart';
import 'package:hub/src/screens/outros.dart';
import 'package:hub/src/screens/top.dart';
import 'package:hub/src/screens/curta.dart';
import 'package:hub/src/screens/apoio.dart';
import 'package:hub/src/screens/listEstabelecimento.dart';
import 'package:hub/src/screens/listEventos.dart';

class Home extends StatefulWidget {

 final String title;

 Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationDotBar ( // Usar -> "BottomNavigationDotBar"
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
      body: Column(
        
        children: <Widget>[
          
          //SizedBox(height: 5 * SizeConfig.heightMultiplier,),
         
          TabBar(
            controller: tabController,
            indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("A cidade", style: TextStyle(
                    //fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Notícias", style: TextStyle(
                      //fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("A cena", style: TextStyle(
                      //fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Curta São Paulo", style: TextStyle(
                     // fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Instatop", style: TextStyle(
                     // fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Top 30 Gay Brasil", style: TextStyle(
                      //fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Eventos 2020", style: TextStyle(
                      //fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Apoio Turístico", style: TextStyle(
                     // fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                
                 
              ]),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: tabController,
                  children: <Widget>[
                    Cidade(),
                    Noticias(),
                    Acena(),
                    Curta(),
                    Outros(),
                    Top(),
                    HomeEventos(),
                    Apoio(),
                 
              ]),
            ),
          )
        ],
        
      ),
      

    );
  }  
}
