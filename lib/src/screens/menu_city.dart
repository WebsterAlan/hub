import 'package:flutter/material.dart';
import 'package:hub/src/screens/Home.dart';


class MenuCity  extends StatefulWidget {
  @override
  _MenuCityState createState() => _MenuCityState();
}

class _MenuCityState extends State<MenuCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
     
      body: Container(
        child: Row(
          children: <Widget>[
           
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    dayItem('Florianópolis', 'images/guia_floripa.jpg',context),  
                    dayItem('Brasília', 'images/guia_df.jpg',context),              
                    dayItem('Salvador', 'images/guia_salvador.jpg',context),
                    dayItem('Belo Horizonte', 'images/guia_bh.jpg',context),
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
      
    );
  }

 

  Widget dayItem(String name, String img,BuildContext context){
    return Card( 
      child:
       new GestureDetector(
        onTap:()=> Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return Home();
          })),
       child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 140.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              )
            ),
          ),
           Positioned(
            bottom: 12.0,
            right: 12.0,
            child: Container(
              
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
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
    ));
  }
}