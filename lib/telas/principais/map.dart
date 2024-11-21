import 'package:flutter/material.dart';
import 'package:via_projeto/components/appbar.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Padding(
          padding:  EdgeInsets.only(top: 16, left: 18, right: 18),
            child: CustomAppBar(),
          ),
          Container(
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/foto_1.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: const Column(
              children: [
              ],
            ),
          ),
        ],
      ),
    );
  }
}