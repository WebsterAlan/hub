
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
  //Criação de tabelas automáticas ao iniciar o aplicativo
    Firestore.instance.collection('usuario').document().setData({
       'cod_usuario': '',
       'nom_usuario': '',
       'des_email': '',
       'des_senha': '',
       'ind_sexo': '',
       'ind_orientacao_sexual': '',
       'dta_nascimento': '',
       'id_facebook': '',
       'id_google_plus': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',

        });

        Firestore.instance.collection('admin').document().setData({
       'cod_admin': '',
       'nom_admin': '',
       'cod_admin_perfil': '',
       'cod_file_foto': '',
       'des_email': '',
       'des_senha': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'id_google_plus': '',
       'ind_excluido': '',
       'ind_root': '',
        });

        Firestore.instance.collection('admin_menu_permissao').document().setData({
       'cod_admin_menu_permissao': '',
       'cod_menu_permissao': '',
       'cod_admin': '',
       'cod_admin_cadastrou': '',
       'dta_hra_cadastro': '',
       'ind_excluido': '',
        });

        Firestore.instance.collection('admin_perfil').document().setData({
       'cod_admin_perfil': '',
       'nom_admin_perfil': '',
       'nom_identificacao': '',
       'cod_admin_cadastrou': '',
       'des_admin_perfil': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });
        
        Firestore.instance.collection('admin_perfil_menu_permissao').document().setData({
       'cod_admin_perfil_menu_permissao': '',
       'cod_admin_perfil': '',
       'cod_menu_permissao': '',
       'cod_admin_cadastrou': '',
       'dta_hra_cadastro': '',
       'ind_excluido': '',
        });

        Firestore.instance.collection('album').document().setData({
       'cod_album': '',
       'cod_site': '',
       'cod_album_local': '',
       'nom_album': '',
       'ind_default': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

        Firestore.instance.collection('album_foto').document().setData({
       'cod_album_foto': '',
       'cod_file': '',
       'cod_album': '',
       'cod_site': '',
       'des_legenda': '',
       'num_ordem': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

        Firestore.instance.collection('album_local').document().setData({
       'cod_album_local': '',
       'nom_album_local': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

        Firestore.instance.collection('charge').document().setData({
       'cod_charge': '',
       'des_legenda': '',
       'des_link': '',
       'cod_file': '',
       'num_ordem': '',
       'ind_excluido': '',
       'ind_status': '',
       'dta_hra_cadastro': '',
       'cod_admin_cadastrou': '',
        });


        Firestore.instance.collection('class_width').document().setData({
       'cod_class_width': '',
       'nom_class_width': '',
       'des_class_width': '',
       'des_porcentagem': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
       });


       Firestore.instance.collection('conteudo').document().setData({
       'cod_conteudo': '',
       'nom_conteudo': '',
       'nom_identificacao': '',
       'des_conteudo': '',
       'ind_galeria': '',
       'ind_registro_unico': '',
       'num_maximo_registro': '',
       'cod_menu': '',
       'cod_menu_novo': '',
       'cod_menu_list': '',
       'ind_aparece_home_frontend': '',
       'num_registro_por_pagina_list': '',
       'cod_class_width_palavra_chave_filtro_list': '',
       'ind_partes_comuns': '',
       'ind_apenas_listagem': '',
       'ind_excluido': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
        });

    return  Firestore.instance;
  }
}