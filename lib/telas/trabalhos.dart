import 'package:flutter/material.dart';
import 'package:via_projeto/components/appbar.dart';
import 'package:via_projeto/components/card.dart';
import 'package:via_projeto/components/color.dart';

class Trabalhos extends StatelessWidget {
  const Trabalhos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.branco2,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 16, left: 18, right: 18),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(height: 16),
                  Text('Trabalhos disponiveis',
                      style: TextStyle(color: Colors.black, fontSize: 24)),
                  SizedBox(height: 16),
                  CustomTrabCard(
                    imageAsset: 'assets/images/foto_1.jpg',
                    localidade: 'Ribeirão Preto - SP',
                    title: 'Arrecadação de verba',
                    nome: 'Hospital Santa Casa de Misericórdia',
                    tempSem: '6h/sem',
                    aval: '4,6',
                    fav: 'favoritar',
                    tempH: '3hrs',
                  ),
                  SizedBox(height: 16),
                  CustomTrabCard(
                    imageAsset: 'assets/images/fundo2.jpg',
                    localidade: 'Ribeirão Preto - SP',
                    title: 'Arrecadação de verba',
                    nome: 'Hospital Santa Casa de Misericórdia',
                    tempSem: '6h/sem',
                    aval: '4,6',
                    fav: 'favoritar',
                    tempH: '3hrs',
                  ),
                  SizedBox(height: 16),
                  CustomTrabCard(
                    imageAsset: 'assets/images/fundo3.jpg',
                    localidade: 'Ribeirão Preto - SP',
                    title: 'Arrecadação de verba',
                    nome: 'Hospital Santa Casa de Misericórdia',
                    tempSem: '6h/sem',
                    aval: '4,6',
                    fav: 'favoritar',
                    tempH: '3hrs',
                  ),
                  SizedBox(height: 16),
                  CustomTrabCard(
                    imageAsset: 'assets/images/fundo.png',
                    localidade: 'Ribeirão Preto - SP',
                    title: 'Arrecadação de verba',
                    nome: 'Hospital Santa Casa de Misericórdia',
                    tempSem: '6h/sem',
                    aval: '4,6',
                    fav: 'favoritar',
                    tempH: '3hrs',
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ));
  }
}
