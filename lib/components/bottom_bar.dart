import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/color.dart';

class CustomBottomBar extends StatefulWidget {
  final int selectedIndex;
  final List<Widget> pages; 
  final void Function(int) onTap; 

  const CustomBottomBar({
    super.key,
    required this.selectedIndex,
    required this.pages,
    required this.onTap, 
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack( 
        index: widget.selectedIndex,
        children: widget.pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        backgroundColor: AppColors.black,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        currentIndex: widget.selectedIndex,
        onTap: (index) {
          setState(() {
            widget.onTap(index);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.houseChimney),
            activeIcon: Icon(FontAwesomeIcons.houseChimneyUser),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.layerGroup),
            activeIcon: Icon(FontAwesomeIcons.codepen),
            label: 'Projetos',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            activeIcon: Icon(FontAwesomeIcons.heartPulse),
            label: 'Testemunhos',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.map),
            activeIcon: Icon(FontAwesomeIcons.mapPin),
            label: 'Mapa',
          ),
        ],
      ),
    );
  }
}
