import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/card.dart';
import 'package:via_projeto/components/color.dart';

class CustomCarrocel extends StatelessWidget {
  const CustomCarrocel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CustomCard(
            imageAsset: 'assets/images/foto_1.jpg',
            title: 'Arrecadação de verba',
            subtitle: 'São Paulo - SP',
            icon: FontAwesomeIcons.star,
            iconColor: AppColors.primaryColor,
            titleButton: '4,4',
            titleButton2: '10h/sem',
            icon2: FontAwesomeIcons.clock,
            iconColor2: Colors.black,
          ),
          CustomCard(
            imageAsset: 'assets/images/foto_1.jpg',
            title: 'Apoio em abrigo animal',
            subtitle: 'Xique Xique - BA',
            icon: FontAwesomeIcons.star,
            iconColor: AppColors.primaryColor,
            titleButton: '4,7',
            titleButton2: '12h/sem',
            icon2: FontAwesomeIcons.clock,
            iconColor2: Colors.black,
          ),
          CustomCard(
            imageAsset: 'assets/images/foto_1.jpg',
            title: 'Plantio de Árvores e limpeza',
            subtitle: 'São Paulo - SP',
            icon: FontAwesomeIcons.star,
            iconColor: AppColors.primaryColor,
            titleButton: '4,8',
            titleButton2: '20h/sem',
            icon2: FontAwesomeIcons.clock,
            iconColor2: Colors.black,
          ),
        ],
      ),
    );
  }
}

class CustommidCarrocel extends StatelessWidget {
  const CustommidCarrocel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CustommidCard(
              imageAsset: 'assets/images/assistencial.webp', title: 'Assistenciais'),
          CustommidCard(
              imageAsset: 'assets/images/educacional.jpg', title: 'Educação e \nCapacitação'),
          CustommidCard(
              imageAsset: 'assets/images/ambiental.jpg', title: 'Conservação e \nSustentabilidade'),
          CustommidCard(
              imageAsset: 'assets/images/foto_1.jpg', title: 'Trabalho Social'),
        ],
      ),
    );
  }
}

class CustomTrabCarrocel extends StatelessWidget {
  const CustomTrabCarrocel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CustomCard2(imageAsset: 'assets/images/foto_1.jpg',
          title: 'TESTE', icon: FontAwesomeIcons.star,
          subtitle: 'teste 2',
          ),
        ],
      ),
    ),
    );
  }
}