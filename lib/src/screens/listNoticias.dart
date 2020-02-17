import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    fontFamily: 'Poppins',

  ),
  home: Noticias(),
  debugShowCheckedModeBanner: false,
));

class Noticias extends StatefulWidget{
  Noticias({Key key}) : super(key: key);

  @override
  _NoticiasState createState() => _NoticiasState();

}

class _NoticiasState extends State<Noticias>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Notícias',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing:  1.5,
                          color:  Color(0xFF555555),
                        ),
                      ),
                    ),

                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.view_module),
                        iconSize: 28.0,
                        color: Colors.grey,

                      ),

                         IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add),
                        iconSize: 28.0,
                        color: Colors.grey,

                      ),


                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Principais notícias',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Colors.grey[600]
                        ),
                      ),
                    ),
                    Text(
                      'Outros',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                          color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),

            Container(
              margin: EdgeInsets.fromLTRB(7.0, 8.0, 7.0, 15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0)),
                              image:  DecorationImage(image: NetworkImage('https://www.travelgay.com/wp-content/uploads/2018/01/pride-toulouse-gay-event-main.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0)),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaybrasilia.com.br/public/uploads/imagens/originais/pabllo_vittar_top_30_gay_brasil_2019_amor_de_que_recorde.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),
                    ],
                  ),
                    Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0)),
                              image:  DecorationImage(image: NetworkImage('https://static-global-s-msn-com.akamaized.net/img-resizer/tenant/amp/entityid/BBZXkf6.img?h=194&w=300&m=6&q=60&u=t&o=t&l=f&x=451&y=239'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0)),
                              image:  DecorationImage(image: NetworkImage('https://static-global-s-msn-com.akamaized.net/img-resizer/tenant/amp/entityid/BBZXVwx.img?h=194&w=300&m=6&q=60&u=t&o=t&l=f&x=933&y=269'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),
                    ],
                  ),
                  
                
                ],
              ),
            ),


         Container(
                margin: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Otros',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Colors.grey[600]
                        ),
                      ),
                    ),
                    Text(
                      'Mais',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                          color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),

            Container(
              margin: EdgeInsets.fromLTRB(7.0, 8.0, 7.0, 15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              image:  DecorationImage(image: NetworkImage('https://tpeventos.com.br/wp-content/uploads/2015/07/evento-000-1030x494.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),

                    ],
                  ),
                
                Row(
                    children: <Widget>[

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              image:  DecorationImage(image: NetworkImage('https://brasaeventos.com.br/wp-content/uploads/2016/07/evento.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('Arquitetura', 80),

                        ),
                      ),

                    ],
                  )

                ],
              )
            )

              


            ],
            
          ),
          
        ),
        
      ),
      bottomNavigationBar: BottomNavigationDotBar ( 
      items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.art_track, onTap: () { /* Cualquier funcion - [abrir nueva venta] */ }),
        BottomNavigationDotBarItem(icon: Icons.date_range , onTap: () { /* Cualquier funcion - [abrir nueva venta] */ }),
        BottomNavigationDotBarItem(icon: Icons.map, onTap: () { /* Cualquier funcion - [abrir nueva venta] */ }),
        BottomNavigationDotBarItem(icon: Icons.room, onTap: () { /* Cualquier funcion - [abrir nueva venta] */ }),
       
      ]
  ),
    );
  }
  imageData(title, count){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        
        Container(
          padding: EdgeInsets.only(left:8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(5.0,5.0,),
                ),
              ]
            ) ,
          ),
        ),

           Container(
          padding: EdgeInsets.only(left:10.0, bottom: 10.0),
          child: Text(
            '$count photos',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ) ,
          ),
        )

        
      ],
    );
  }
}