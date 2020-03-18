import 'package:flutter/material.dart';


class Top extends StatefulWidget {
  Top({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {

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
                      Text("Top 30 Gay Brasil ", style: TextStyle(fontSize: 20),)
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
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/anitta_rave_favela_top_30_gay_brasil.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título  Top 30 Gay 1'),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/lady_gaga_stupid_love_chart_top_30_gay_brasil.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título  Top 30 Gay 2'),

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
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/pabllo_vittar_ludmilla_anitta_top_30_gay_brasil.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título  Top 30 Gay              3'),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysaopaulo.com.br/public/uploads/imagens/originais/rave_favela_top_30_gay_brasil.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título Top 30 Gay           4'),

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
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysalvador.com.br/public/uploads/imagens/originais/pabllo_vittar_top_30_gay_brasil_2019_amor_de_que_recorde.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título  Top 30 Gay              3'),

                        ),
                      ),
                        Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysalvador.com.br/public/uploads/imagens/originais/dua_lipa_top_30_gay_brasil_2.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título Top 30 Gay           4'),

                        ),
                      ),
                       Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysalvador.com.br/public/uploads/imagens/originais/vmc_caca_werneck_que_vbe_e_essa_dj_the_week_musica_top_30_gay_brasil.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título Top 30 Gay           4'),

                        ),
                      ),
                       Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              image:  DecorationImage(image: NetworkImage('https://www.guiagaysalvador.com.br/public/uploads/imagens/originais/top_30_gay_brasil_pabllo_vittar_ludmilla_dua_lipa.jpg'),
                              fit: BoxFit.cover
                              )

                          ),

                            child: secundario('Título Top 30 Gay           4'),

                        ),
                      ),
                    ],
                  ),
                  
                  
                
                ],
              ),
            ),


       




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
