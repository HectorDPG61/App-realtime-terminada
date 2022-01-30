import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/loading_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/usuarios_page.dart';
import 'package:flutter_application_1/pages/chat_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  
  'usuarios'  : (_) => UsuariosPage(),
  'chat'      : (_) => ChatPage(),
  'login'     : (_) => LoginPage(),
  'register'  : (_) => RegisterPage(),
  'Loading'   : (_) => LoadingPage(),

};