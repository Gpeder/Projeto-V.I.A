import 'package:flutter/material.dart';
import 'package:via_projeto/components/appbar.dart';
import 'package:via_projeto/components/banner.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/carrocel.dart';
import 'package:via_projeto/components/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.branco2,
      body: ListView(
        children: [
          const Padding(
          padding: EdgeInsets.only(top: 16, left: 18, right: 18),
          child: CustomAppBar(),
          ),
          const SizedBox(height: 8),
          const CustomBanner(
              text: 'Procure um trabalho voluntário \n que é a sua cara',
              imageAsset: 'assets/images/fundo.png'),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                CustomTextButtom2(
                    text: 'Os mais procurados',
                    text2: 'Ver tudo',
                    onPressed: () {
                      Navigator.pushNamed(context, '/trabalhos');
                    }),
                const CustomCarrocel(),
                const Text(
                  'Divididos por tópicos',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                const CustommidCarrocel(),
              ],
            ),
          ),
          const CustomBanner2(
              imagePath: 'assets/images/fundo2.jpg',
              text:
                  'Conecte-se e fortaleça sua comunidade com o voluntariado. Encontre oportunidades próximas ou pessoas dispostas a ajudar sua causa. Cadastre sua organização, crie vagas e coordene projetos com facilidade.')
        ],
      ),
    );
  }
}
