import 'package:flutter/material.dart';

import 'SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Perfil(),
            );
          },
        );
      },
    );
  }
}


class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {

           AppBar(
  title: Text("Hello Appbar"),
);

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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://dianaluminosos.com.br/wp-content/uploads/2017/03/fachada-de-loja.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    
                  ),
                   Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                    Spacer(),
                    
                  ],
                ),
              ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 90.0, right: 15.0, left: 15.0),
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 330,
                                      child: Text(
                                        "Lampião Gastrobar",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight:
                                                FontWeight.bold), // has impact
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Text(
                                        "A aa noite começa aí com som mecânico generoso com pop, e bom papo e olhares que se encontram principalmente na varanda - há a parte interna. Com capacidade para cerca de 200 pessoas, o Lampião tem decoração colorida e foi tomado aos poucos por LGBT."),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Row(
                            children: <Widget>[
                              Container(
                               width: 50,
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.calendar_today,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                
                                child: Column(
                                  children: <Widget>[
                                    Text('Seg, Ter,  Qua, Qui, Sex, Sab, Dom'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ),
                                SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Row(
                            children: <Widget>[
                              Container(
                               width: 50,
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Column(
                                  children: <Widget>[
                                    Text('Rua Auguta 1.499, Consoação'),
                                  ],
                                ),
                              ),
                            ],
                          ),),

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
                                SizedBox(
                                  height: 100,
                                )
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
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: Text(
                  'Calendário de Eventos',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
              ),
             
                  Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Container(
            height: MediaQuery.of(context).size.height - 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCoffeeItem('assets/images/01.jpg', 'Evento 1', 'subtítulo 1', '23/05/2020'),
                _buildCoffeeItem('assets/images/02.jpg', 'Evento 2', 'subtítulo 2', '27/05/2020'),
                _buildCoffeeItem('assets/images/03.jpg', 'Evento 3', 'subtítulo 3', '12/06/2020')
              ],
            ),
          ),
        ),
            ]),
      ),
    );
  }
}
 _buildCoffeeItem(String imgPath, String productName, String productType, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 225.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4.0,
              blurRadius: 4.0
            )
          ]
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(productName,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0
                  ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(productType,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14.0,
                    color: Colors.grey
                  ),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 0.4,
                    color: Colors.grey.withOpacity(0.4),
                  )
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '' + price,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
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
