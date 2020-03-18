import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hub/src/screens/perfilEstabelecimento.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
import 'package:hub/src/screens/listEventos.dart';
import 'package:hub/src/screens/Home.dart';



void main() => runApp(MaterialApp(
  theme: ThemeData(
    fontFamily: 'Poppins',

  ),
  home: Listagem(),
  debugShowCheckedModeBanner: false,
));

List _elements = [
  {'name': 'Pub República dos Livres','descricao': 'Pistão sul Águas Claras',  'group': 'Team A'},
  {'name': 'Vitoria Haus', 'descricao': 'www',  'group': 'Team B'},
  {'name': 'Valvet Pub', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team A'},
  {'name': 'Pop Bear Party', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team B'},
  {'name': 'Sub Dulcina','descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
  {'name': 'Lava Jato Social', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
  {'name': 'Danny', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
  {'name': 'Danny', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
  {'name': 'Danny', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
  {'name': 'Paulo', 'descricao': 'descrição completa do estabelecimento', 'group': 'Team C'},
];

class Listagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guia Gay',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

    

      home: Scaffold(
        
        backgroundColor: Color(0xFFFAFAFA),

       
        
        body: GroupedListView<dynamic, String>(
          groupBy: (element) => element[''],
          elements: _elements,
          sort: true,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              value,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
          ),
          itemBuilder: (c, element) {

            
            
            return Card(
              
              elevation: 4.0,
              margin: new EdgeInsets.symmetric(horizontal: 21.0, vertical: 5.0),
              
              child: Container(
                
                
                child: ListTile(
                onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Perfil()));
                          },
                  

                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 4.0, vertical: 15.0),
                      
                      
                      
                  leading: Image.network( 'http://sosantobar.com.br/wp-content/uploads/2018/05/LOGO-NOVO150.png', height: double.infinity),
                  
                  title: Text(element['name']),
                  
                  
                  subtitle: Text(element['descricao'], style: TextStyle(fontSize: 12),),
                   
                 
                ),
              ),
            ); 
            
          },
        ),
        

  
          
          //If you want to show body behind the navbar, it should be true
             
     

  bottomNavigationBar: BottomNavigationDotBar ( 
       items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.description, onTap: () {Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Home())); }),

         BottomNavigationDotBarItem(icon: Icons.description, onTap: () {Navigator.push(
                                context, MaterialPageRoute(builder: (context) => HomeEventos())); }),

        BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () { Navigator.push(
                                context, MaterialPageRoute(builder: (context)=>Listagem()));}),

        BottomNavigationDotBarItem(icon: Icons.timer, onTap: () {}),
       
      ],
  ),



          
        
 
)
        
      
      
    );
  }
}

