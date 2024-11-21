import 'package:flutter/material.dart';
import 'package:via_projeto/components/bottom_bar.dart';
import 'package:via_projeto/telas/principais/home.dart';
import 'package:via_projeto/telas/principais/map.dart';
import 'package:via_projeto/telas/principais/testemunho.dart';
import 'package:via_projeto/telas/principais/trabalhos.dart';
import 'package:via_projeto/telas/profile_telas/favoritos/favoritos.dart';


class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;
  PageController controler = PageController();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    controler.jumpToPage(index); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controler,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Home(),
          Trabalhos(),
          Favoritos(),
          Mapa(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: selectedIndex,
        onTap: onItemTapped, 
        pages: const [
          Home(), 
          Trabalhos(), 
          Testemunho(), 
          Mapa(), 
        ],
      ),
    );
  }
}

