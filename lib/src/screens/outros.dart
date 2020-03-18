import 'package:flutter/material.dart';

class Outros extends StatefulWidget {
  Outros({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _OutrosState createState() => _OutrosState();
}

class _OutrosState extends State<Outros> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
                    children: <Widget>[
                      Text("InstaTop", style: TextStyle(fontSize: 20),)
                    ],
                  ),
          
          //-----------------------------------------------------------/////////

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
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/hotel_gay_salvador.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('InstaTop 1 ',''),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/cerveja_lgbt_belo_horizonte.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('InstaTop 2', ' '),

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
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/noticia-foto/burlesque_grupo_whats_tops_gay_passeio_de_escuna_salvador.jpeg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('InstaTop 3', ''),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/noticia-foto/festa_junina_gay_sense_bh.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: imageData('InstaTop 4', 80),

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
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/hotel_gay_salvador.jpg'),
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

              




          //--------------------------------------------------------------------//
          

          ],
        ),
      ),

    );
  }

    imageData(title, count){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        
        Container(
          padding: EdgeInsets.only(left:8.0, bottom: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
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

         

        
      ],
    );
  }

  
 }
