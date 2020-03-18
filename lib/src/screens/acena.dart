import 'package:flutter/material.dart';

class Acena extends StatefulWidget {
  Acena({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _AcenaState createState() => _AcenaState();
}

class _AcenaState extends State<Acena> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          
          //-----------------------------------------------------------/////////

                               Container(
                                 
                                 
                                 
              
              margin: EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("A cena", style: TextStyle(fontSize: 20),)
                    ],
                  ),



                           



                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.travelgay.com/wp-content/uploads/2018/01/pride-toulouse-gay-event-main.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título da Notícia secundária Um'),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://pleno.news/wp-content/uploads/2019/09/plenonews_69429078_424547198412357_2917137491588994799_n-1024x684.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título da Notícia secundária 2'),

                        ),
                      ),
                    ],
                  ),
                    Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://static-global-s-msn-com.akamaized.net/img-resizer/tenant/amp/entityid/BBZXkf6.img?h=194&w=300&m=6&q=60&u=t&o=t&l=f&x=451&y=239'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título da Notícia secundária 3'),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://static-global-s-msn-com.akamaized.net/img-resizer/tenant/amp/entityid/BBZXVwx.img?h=194&w=300&m=6&q=60&u=t&o=t&l=f&x=933&y=269'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título da Notícia secundária 4'),

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
                          

                            child: imageData('Notícia Principal 2'),
                            

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

                            child: imageData('Arquitetura'),

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

   imageData(title){
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

  secundario(title){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
         
        Container(
          padding: EdgeInsets.only( bottom: 10.0, ),
          color: Color.fromRGBO(38, 38, 38, 0.2),
          margin: EdgeInsets.only(bottom:2.0, left: 1, right: 1),
          width: double.infinity,
          
          
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 20.0,
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
