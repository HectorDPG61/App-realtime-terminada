import 'package:http/http.dart' as http;


import 'package:flutter_application_1/models/usuario.dart';
import 'package:flutter_application_1/models/usuarios_response.dart';
import 'package:flutter_application_1/services/auth_service.dart';

import 'package:flutter_application_1/global/environment.dart';


class UsuariosService {
  Future<List<Usuario>> getUsuarios() async{
    try{
      final uri = Uri.parse('${Environment.apiUrl}/usuarios');
      final resp = await http.post(uri,
      headers: {
        'Content-Type': 'application/json',
        
      }
      );
      final usuariosResponse = usuariosResponseFromJson( resp.body );

      return usuariosResponse.usuarios;

    } catch (e) {
      return [];
    }
  }
}