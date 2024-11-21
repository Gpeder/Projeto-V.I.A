import 'package:flutter/material.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/color.dart';
import 'package:via_projeto/components/textfield.dart';

class Dados extends StatelessWidget {
  const Dados({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.branco2,
        body: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        'Nome do Usuário',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const CustomFormText(name: 'Cicrano da silva'),
                      const SizedBox(height: 10),
                      const Text(
                        'Telefone',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const CustomFormText(name: '(00) 00000-0000'),
                      const SizedBox(height: 10),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const CustomFormText(name: 'cicraninhosilva2009@hotmail.com'),
                      const SizedBox(height: 10),
                      const Text(
                        'Cidade',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const CustomFormText(name: 'São Paulo - SP'),                       const SizedBox(height: 10),
                      const Text(
                        'Cep',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const CustomFormText(name: '00000-000'),
                      const SizedBox(height: 30),
                      CustomBtnModal(
                        onPressed: () {},
                        text: 'Alterar informações',
                        icon: Icons.edit,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
