import 'package:flutter/material.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/color.dart';
import 'package:via_projeto/components/textfield.dart';


class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundo3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.8),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: 550,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text('Cadaste - se', style: TextStyle(fontSize: 30, color: Colors.white),),
                  const SizedBox(
                    height: 16,),
                   CustomTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   CustomTextField(
                      label: 'Nome completo', keyboardType: TextInputType.number),
                  const SizedBox(
                    height: 16,
                  ),
                   CustomTextField(
                      label: 'Senha', keyboardType: TextInputType.number),
                      const SizedBox(
                    height: 16,
                      ),
                       CustomTextFieldsenha(
                      label: 'Digite sua senha novamente', keyboardType: TextInputType.number),
                      const SizedBox(
                    height: 16,
                      ),
                       CustomTextFieldsenha(
                      label: 'Cidade', keyboardType: TextInputType.number),
                      const SizedBox(
                    height: 20,
                      ),
                  PrimaryBtn(onPressed: () {
                                         Navigator.pushNamed(context, '/root');

                  }, text: 'Cadastrar'),
                  const SizedBox(
                    height: 16,
                  ),                 
                ],
              ),
            ),
          )),
    );
  }
}