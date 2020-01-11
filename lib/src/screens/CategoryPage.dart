import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CategoryPage extends StatefulWidget{
 @override
  CategoryPageState createState() => CategoryPageState();
}

class CategoryPageState extends State<CategoryPage>{

 List<String> events = ["Baladas", "Bares", "Cafés","Cidadania", "Cines/Cabines", "Compras", "Esportes", "Igrejas", "Points", "Saunas" ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(
        image: DecorationImage( 
          image: AssetImage("assetName"), 
          fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 120.0),
          child: GridView(physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: events.map((title){
            return GestureDetector(
              onTap: (){

              } ,
              child: Card(
                margin: const EdgeInsets.all(20.0),
                child: getCardByTitle(title),
              ),
            );
          }).toList(),
          ),
        ),
    )
  );
  }

Column getCardByTitle(String title){

  String img = "";

   if (title == "Baladas")
    img = "images/ic_roteiro_clubs_1.png";
    else if (title == "Bares")
    img = "images/ic_roteiro_bares.png";
    else if (title == "Cafes")
    img = "images/ic_roteiro_cafe.png";
    else if (title == "Cidadania")
    img = "images/ic_roteiro_cidadania.png";
    else if (title == "Cines/Cabines")
    img = "images/cine_cabines.png";
    else if (title == "Compras")
    img = "images/ic_roteiro_compras_3.png";
    else if (title == "Esportes")
    img = "images/esportes.png";
    else if (title == "Igrejas")
    img = "images/ic_roteiro_igrejas.png";
    else if (title == "Points")
    img = "images/ic_roteiro_apoio_turistico.png";
    else if (title == "Saunas")
    img = "images/saunas.png";
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(children: <Widget>[
              new Image.asset(img, width:80.0,height: 80.0 ,)
            ],),
          ),
        )
      ],
    );

       

}
}