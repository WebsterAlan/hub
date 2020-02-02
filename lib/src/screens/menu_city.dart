import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    dayItem('Florianópolis', 'images/guia_floripa.jpg'),  
                    dayItem('Brasília', 'images/guia_df.jpg'),              
                    dayItem('Salvador', 'images/guia_salvador.jpg'),
                    dayItem('Belo Horizonte', 'images/guia_bh.jpg'),
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
      
    );
  }

 

  Widget dayItem(String name, String img){
    return Card(
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
    );
  }
}