import 'package:flutter/material.dart';
import 'package:via_projeto/components/appbar.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/card.dart';

class Testemunho extends StatelessWidget {
  const Testemunho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 16, left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 16,
              ),
              const CustomCardtest(
                imageAsset: 'assets/images/avatar1.jpg',
                nome: 'Paula Latejano',
                data: '13/07/2023',
                aval: '5',
                desc: 'O app foi essencial para eu encontrar um trabalho voluntário que se encaixasse na minha rotina. Ele mostra opções perto de mim e me informa o tempo necessário, o que facilita muito para eu conciliar com minha agenda. Agora consigo ajudar de forma prática e sem sobrecarga!',
              ),
              const SizedBox(height: 16,),
              const CustomCardtest(
                imageAsset: 'assets/images/avatar2.jpg',
                nome: 'Seu tião',
                data: '06/09/2020',
                aval: '5',
                desc: 'O app foi essencial para eu encontrar um trabalho voluntário que se encaixasse na minha rotina. Ele mostra opções perto de mim e me informa o tempo necessário, o que facilita muito para eu conciliar com minha agenda. Agora consigo ajudar de forma prática e sem sobrecarga!',
              ),
               const SizedBox(height: 16,),
              const CustomCardtest(
                imageAsset: 'assets/images/avatar5.jpg',
                nome: 'E-girl da paulista',
                data: '06/09/2024',
                aval: '5',
                desc: 'O app foi essencial para eu encontrar um trabalho voluntário que se encaixasse na minha rotina. Ele mostra opções perto de mim e me informa o tempo necessário, o que facilita muito para eu conciliar com minha agenda. Agora consigo ajudar de forma prática e sem sobrecarga!',
              ),
              const SizedBox(height: 16,),
              CustomBtnModal (onPressed: () {

              }, text: 'Adicionar Testemunho', icon: Icons.add,),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
