import 'package:flutter/material.dart';
import 'package:via_projeto/root.dart';
import 'package:via_projeto/telas/login/cadastro.dart';
import 'package:via_projeto/telas/profile_telas/favoritos/dados.dart';
import 'package:via_projeto/telas/profile_telas/favoritos/favoritos.dart';
import 'package:via_projeto/telas/login/login.dart';
import 'package:via_projeto/telas/principais/map.dart';
import 'package:via_projeto/telas/profile_telas/perfil.dart';
import 'package:via_projeto/telas/profile_telas/trabalhos_cadas.dart';
import 'package:via_projeto/telas/principais/testemunho.dart';
import 'package:via_projeto/telas/principais/trabalhos.dart';


void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) =>  const Login(),
        '/trabalhos': (context) => const Trabalhos(),
        '/testemunho': (context) => const Testemunho(),
        './mapa': (context) => const Mapa(),
        '/cadastro': (context) => const Cadastro(),
        '/root': (context) => const RootPage(),
        '/perfil': (context) => const Perfil(),
        '/favoritos': (context) => const Favoritos(),
        '/dados': (context) => const Dados(),
        '/trabalhos_cadas': (context) => const TrabalhosCadastrados(),
      },
      debugShowCheckedModeBanner: false,
      home:  const Login(),
    );
  }
}
