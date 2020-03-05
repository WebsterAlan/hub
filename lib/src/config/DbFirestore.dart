
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


      Firestore.instance.collection('conteudo_campo').document().setData({
       'cod_conteudo_campo': '',
       'cod_conteudo': '',
       'cod_conteudo_campo_existente': '',
       'des_label': '',
       'des_descricao': '',
       'cod_conteudo_list': '',
       'cod_conteudo_campo_list': '',
       'cod_class_width_formulario': '',
       'cod_class_width_listagem': '',
       'cod_class_width_listagem_filtro': '',
       'ind_obrigatorio': '',
       'des_class': '',
       'ind_align_list': '',
       'num_ordem_formulario': '',
       'num_ordem_listagem': '',
       'num_ordem_listagem_filtro': '',
       'ind_apenas_palavra_chave_filtro': '',
       'ind_sub_tipo': '',
       'des_multiplas_opcoes': '',
       'cod_admin_cadastrou': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('conteudo_campo_existente').document().setData({
       'cod_conteudo_campo_existente': '',
       'nom_conteudo_campo_existente': '',
       'nom_conteudo_campo_existente_cc': '',
       'des_conteudo_campo_existente': '',
       'nom_identificacao': '',
       'nom_alias_join': '',
       'des_class': '',
       'ind_tipo': '',
       'ind_sub_tipos': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('conteudo_campo_existente').document().setData({
       'cod_conteudo_campo_existente': '',
       'nom_conteudo_campo_existente': '',
       'nom_conteudo_campo_existente_cc': '',
       'des_conteudo_campo_existente': '',
       'nom_identificacao': '',
       'nom_alias_join': '',
       'des_class': '',
       'ind_tipo': '',
       'ind_sub_tipos': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });


      Firestore.instance.collection('conteudo_registro').document().setData({
       'cod_conteudo_registro': '',
       'cod_conteudo': '',
       'des_string_01': '',
       'des_string_02': '',
       'des_string_03': '',
       'des_string_04': '',
       'des_string_05': '',
       'des_string_06': '',
       'des_string_07': '',
       'des_string_08': '',
       'des_string_09': '',
       'des_string_10': '',
       'des_string_11': '',
       'des_string_12': '',
       'des_string_13': '',
       'des_string_14': '',
       'des_string_15': '',
       'des_string_16': '',
       'des_string_17': '',
       'des_string_18': '',
       'des_string_19': '',
       'des_string_20': '',
       'dta_hra_01': '',
       'dta_hra_02': '',
       'dta_hra_03': '',
       'dta_hra_04': '',
       'dta_hra_05': '',
       'dta_hra_06': '',
       'des_datas': '',
       'des_texto_01': '',
       'des_texto_02': '',
       'des_texto_03': '',
       'des_texto_04': '',
       'des_texto_05': '',
       'des_texto_06': '',
       'des_texto_07': '',
       'des_texto_08': '',
       'des_texto_09': '',
       'des_texto_10': '',
       'cod_conteudo_registro_01': '',
       'cod_conteudo_registro_02': '',
       'cod_conteudo_registro_03': '',
       'cod_conteudo_registro_04': '',
       'cod_conteudo_registro_05': '',
       'cod_conteudo_registro_06': '',
       'cod_conteudo_registro_07': '',
       'cod_conteudo_registro_08': '',
       'cod_conteudo_registro_09': '',
       'cod_conteudo_registro_10': '',
       'arr_cod_conteudo_registro_01': '',
       'arr_cod_conteudo_registro_02': '',
       'arr_cod_conteudo_registro_03': '',
       'arr_cod_conteudo_registro_04': '',
       'arr_cod_conteudo_registro_05': '',
       'ind_multiplas_opcoes_01': '',
       'ind_multiplas_opcoes_02': '',
       'ind_multiplas_opcoes_03': '',
       'ind_multiplas_opcoes_04': '',
       'ind_multiplas_opcoes_05': '',
       'cod_conteudo_registro_10': '',
       'ind_multiplas_opcoes_06': '',
       'ind_multiplas_opcoes_07': '',
       'ind_multiplas_opcoes_08': '',
       'ind_multiplas_opcoes_09': '',
       'ind_multiplas_opcoes_10': '',
       'cod_file_01': '',
       'cod_file_02': '',
       'cod_file_03': '',
       'cod_file_04': '',
       'cod_file_05': '',
       'cod_file_06': '',
       'cod_file_07': '',
       'cod_file_08': '',
       'cod_file_09': '',
       'cod_file_10': '',
       'num_ordem': '',
       'cod_idioma': '',
       'cod_conteudo_registro_idioma_raiz': '',
       'num_total_visita': '',
       'num_total_visita_hoje': '',
       'num_total_vista_7_dias': '',
       'num_total_visita_mes_atual': '',
       'cod_admin_cadastrou': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('conteudo_registro_foto').document().setData({
       'cod_conteudo_registro_foto': '',
       'cod_conteudo_registro': '',
       'des_legenda': '',
       'cod_file': '',
       'num_ordem': '',
       'dta_hra_cadastro': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('conteudo_registro_visita').document().setData({
       'cod_conteudo_registro_visita': '',
       'cod_conteudo_registro': '',
       'des_ip': '',
       'cod_identificacao': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_latencia': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('destaque').document().setData({
       'cod_destaque': '',
       'cod_destaque_tipo': '',
       'cod_site': '',
       'nom_destaque': '',
       'ind_tipo': '',
       'nom_tabela': '',
       'nom_coluna_primary_key': '',
       'nom_coluna_valor': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('destaque_noticia_site_rel').document().setData({
       'cod_destaque_noticia_site_rel': '',
       'cod_destaque': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',
       'cod_noticia_site_rel': '',
        });

      Firestore.instance.collection('destaque_registro_rel').document().setData({
       'cod_destaque_registro_rel': '',
       'cod_destaque': '',
       'cod_destaque_tipo': '',
       'cod_registro': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('destaque_tipo').document().setData({
       'cod_destaque_tipo': '',
       'nom_destaque_tipo': '',
       'nom_tabela': '',
       'nom_coluna_primary_key': '',
       'nom_coluna_valor': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('enquete').document().setData({
       'cod_enquete': '',
       'cod_site': '',
       'cod_enquete_grupo': '',
       'des_pergunta': '',
       'dta_hra_cadastro': '',
       'num_total_votos': '',
       'dta_hra_inicio': '',
       'dta_hra_final': '',
       'cod_admin_cadastrou': '',
        });

      Firestore.instance.collection('enquete_grupo').document().setData({
       'cod_enquete_grupo': '',
       'des_slug': '',
       'nom_enquete_grupo': '',
       'tit_enquete_grupo': '',
       'tit_subtitulo_enquete_grupo': '',
       'des_enquete_grupo': '',
       'cod_file': '',
       'dta_hra_final': '',
       'ind_status': '',
       'ind_excluido': '',
        });

      Firestore.instance.collection('enquete_resposta').document().setData({
       'cod_enquete_resposta': '',
       'cod_enquete': '',
       'des_resposta': '',
       'des_ref_url': '',
       'cod_ref_registro': '',
       'ind_ref_registro': '',
       'dta_hra_cadastro': '',
       'num_total_votos': '',
       'num_ordem': '',
       'cod_file': '',
       'cod_admin_cadastrou': '',
       'ind_status': '',
       'ind_excluido': '',
       });

      Firestore.instance.collection('enquete_voto').document().setData({
       'cod_enquete_voto': '',
       'cod_enquete_resposta': '',
       'cod_identificacao': '',
       'des_ip': '',
       'cod_usuario': '',
       'dta_hra_cadastro': '',
       'ind_excluido': '',
       });

      Firestore.instance.collection('estabelecimento').document().setData({
       'cod_estabelecimento': '',
       'cod_site': '',
       'nom_estabelecimento': '',
       'des_sinopse': '',
       'des_estabelecimento': '',
       'cod_estabelecimento_categoria_principal': '',
       'des_codigo_google_maps': '',
       'des_link_facebook': '',
       'des_link_twitter': '',
       'num_telefone': '',
       'des_email': '',
       'des_horario': '',
       'des_endereco': '',
       'des_endereco_link': '',
       'des_preco': '',
       'des_link_site': '',
       'des_slug': '',
       'ind_pago': '',
       'cod_01': '',
       'cod_02': '',
       'cod_03': '',
       'num_coordenada_x': '',
       'num_coordenada_y': '',
       'des_atracoes_residentes': '',
       'des_url': '',
       'des_url_completa': '',
       'dta_hra_cadastro': '',
       'dta_hra_ultima_modificacao': '',
       'ind_fechado': '',
       'ind_status': '',
       'ind_excluido': '',
       });

    return  Firestore.instance;
  }
}