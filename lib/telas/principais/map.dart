import 'package:flutter/material.dart';
import 'package:via_projeto/components/appbar.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
      padding: const EdgeInsets.only(top: 16, left: 18, right: 18),
        child: ListView(
          children: const [
            CustomAppBar(),
            SizedBox(height: 20,),
            Text('Mapa', style: TextStyle(color: Colors.black, fontSize: 24),),
          ],
        ),
      )
    );
  }
}