import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/color.dart';
import 'package:via_projeto/components/textfield.dart';


class Login extends StatelessWidget {
   const Login({super.key});

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
              height: 580,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Crie sua conta',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   CustomTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   CustomTextFieldsenha(
                      label: 'Senha', keyboardType: TextInputType.number),
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryBtn(onPressed: () {
                     Navigator.pushNamed(context, '/root');
                  }, text: 'Login'),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextButton(onPressed: () {
                                         Navigator.pushNamed(context, '/cadastro');

                  }, text1: 'Ainda não possui uma conta? ', text2: 'Cadastre-se',),
                  SecundaryBtn(
                      onPressed: () {},
                      text: 'Entrar com Google',
                      icon: FontAwesomeIcons.google),
                  const SizedBox(
                    height: 16,
                  ),
                  SecundaryBtn(
                      onPressed: () {},
                      text: 'Entrar com o facebook',
                      icon: FontAwesomeIcons.facebook),
                  const SizedBox(
                    height: 16,
                  ),
                  SecundaryBtn(
                      onPressed: () {},
                      text: 'Entrar com Apple',
                      icon: FontAwesomeIcons.apple),
                ],
              ),
            ),
          )),
    );
  }
}