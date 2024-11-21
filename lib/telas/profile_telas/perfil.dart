import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/color.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.branco2,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back,),),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    ),
                    const SizedBox(
                      height: 20,),
                      const Text('Nome do Usuário', style: TextStyle(color: Colors.black, fontSize: 24),),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                CustomFormButton(text: 'Dados Pessoais', onPressed: () {Navigator.pushNamed(context, '/dados');  }, icon: FontAwesomeIcons.userCheck,),
                const SizedBox(height: 20),
                CustomFormButton(text: 'Favoritos', onPressed: () { Navigator.pushNamed(context, '/favoritos'); }, icon: FontAwesomeIcons.heartCircleCheck,),
                const SizedBox(height: 20),
                CustomFormButton(text: 'Trabalhos aplicados', onPressed: (){Navigator.pushNamed(context, '/trabalhos_cadas');}, icon: FontAwesomeIcons.briefcase,),
              ]
            ),
            const SizedBox(height: 200,),
            const Image(image: AssetImage("assets/images/logo_name.png"), width: 200,),
          ],
        ),
      ),
    );
  }
}