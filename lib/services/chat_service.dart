import 'package:flutter_application_1/models/mensajes_response.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/global/environment.dart';
import 'package:flutter_application_1/models/usuario.dart';



class ChatService with ChangeNotifier {

  late Usuario usuarioPara;


  Future<List<Mensaje>> getChat( String usuarioID ) async {

    final uri = Uri.parse('${ Environment.apiUrl }/mensajes/$usuarioID');
    final resp = await http.post(uri,
      headers: {
        'Content-Type': 'application/json',
        
      }
    );

    final mensajesResp = mensajesResponseFromJson(resp.body);

    return mensajesResp.mensajes;


  }



}

