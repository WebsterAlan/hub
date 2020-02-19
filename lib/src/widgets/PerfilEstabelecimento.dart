import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             
            
            Stack(
              
              children: <Widget>[
                
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 200.0,
                    decoration:  BoxDecoration(
      image:  DecorationImage(image:  NetworkImage("https://dianaluminosos.com.br/wp-content/uploads/2017/03/fachada-de-loja.jpg"),
      fit: BoxFit.cover)
    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical:70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         
                          Text(
                            'Lampião Gastrobar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                 shadows: [
            Shadow(
                blurRadius: 5.9,
                color: Colors.black,
                offset: Offset(11.0, 5.0),
                 
                ),
                
            ],
                                
                                
                                ),
                          ),

                          SizedBox(height: 15.0),
                         
                        ],
                      ),
                      
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 15.0, left: 15.0),
                  child: Container(
                    width: double.infinity,
                    
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Row(
                          
                          
                         
                          
                          children: <Widget>[
                          Container(width: 150, child: Column(
                            
                            children: <Widget>[                             
                              Icon(Icons.access_time,),
                              Text('Seg, Qua, Qui'),
                              
                              
                              
                            ],
                          ),),
                           Container(width: 150, child: Column(
                             children: <Widget>[
                               Icon(Icons.location_on),
                               Text('Rua Augusta, 1.449, Consolação')

                             ],
                           ),),
                           
                        ],),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                                

                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            
                            children: <Widget>[
                             
                              Expanded(
                               
                              child: SingleChildScrollView(

                            
                            
                              child: Text("A noite começa aí com som mecânico generoso com pop, e bom papo e olhares que se encontram principalmente na varanda - há a parte interna. Com capacidade para cerca de 200 pessoas, o Lampião tem decoração colorida e foi tomado aos poucos por LGBT."),
                              ),
                              ),
                            ],
                          ),
                        ),
                        
                        Divider(),
                      
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Galeria de fotos',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Material(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blueAccent.withOpacity(0.1),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.blueAccent,
                                  onPressed: () {},
                                ),
                                
                              ),
                              SizedBox(height: 100,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Calendário de Eventos',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
              
            ),
           



            Container(
          margin: EdgeInsets.symmetric(vertical: 1.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          )
            ),



        

               ]
               
          
        ),
       
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 340.0 - 150);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 340.0 - 150);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

