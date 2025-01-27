import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class GaleryPage extends StatefulWidget{
  
  @override
  GaleryPageState createState() => GaleryPageState();
}

class GaleryPageState extends State<GaleryPage>{

  bool loading;
  List<String> ids = [];
  
  @override
  void initState(){
    loading =  true;
    ids = [];
    _loadImageIds();
    super.initState();
  }
  
  void _loadImageIds() async {
    final response = await http.get('https://picsum.photos/v2/list');
    final json = jsonDecode(response.body);
    List<String> _ids = [];
    for(var image in json){
      _ids.add(image['id']);
    }

    setState(() {
      loading = false;
      ids = _ids;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context,index){
        return Image.network('https://picsum.photos/id/${ids[index]}/300/300');
      },
      itemCount: ids.length,
    );
  }

}