import 'package:flutter/material.dart';
import 'package:via_projeto/components/bottom_bar.dart';
import 'package:via_projeto/telas/favoritos.dart';
import 'package:via_projeto/telas/home.dart';
import 'package:via_projeto/telas/map.dart';
import 'package:via_projeto/telas/trabalhos.dart';

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
          Mapa(),
          Favoritos(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
