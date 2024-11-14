import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/color.dart';

class CustomBottomBar extends StatefulWidget {
  final void Function(int value) onTap;
  final int selectedIndex;

  const CustomBottomBar({super.key, required this.onTap, required this.selectedIndex});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 24,
      backgroundColor: AppColors.black,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.white.withOpacity(0.6),
      currentIndex: widget.selectedIndex,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          activeIcon: Icon(FontAwesomeIcons.homeUser),
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
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.map),
          activeIcon: Icon(FontAwesomeIcons.mapPin),
          label: 'Mapa',
        ),
      ],
    );
  }
}
