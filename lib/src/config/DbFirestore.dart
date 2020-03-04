
import 'package:cloud_firestore/cloud_firestore.dart';


class DbFirestore {

static final DbFirestore dbFirestore = DbFirestore();

static Firestore _dbInstance;
 


  Firestore get dbInstance   {
    
    if (_dbInstance != null)
    return _dbInstance;

    _dbInstance = initDbFirestore();
    return dbInstance;

  }

  initDbFirestore()  {
  //Efetuar Criação de Tabelas do banco de Dados Firestore
    Firestore.instance.collection('usuario').document().setData({ 'title': 'title', 'author': 'author' });
    return  Firestore.instance;
  }
}