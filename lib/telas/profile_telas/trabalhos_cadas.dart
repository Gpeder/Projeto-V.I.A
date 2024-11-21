import 'package:flutter/material.dart';
import 'package:via_projeto/components/carrocel.dart';

class TrabalhosCadastrados extends StatelessWidget {
  const TrabalhosCadastrados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back)),
                const SizedBox(width: 30,),
                const Text('Trabalhos Aplicados', style: TextStyle(color: Colors.black, fontSize: 24),),
              ],
            ),
            const SizedBox(height: 16,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Aplicações ativas' , style: TextStyle(color: Colors.black, fontSize: 24),),
                SizedBox(height: 16,),
                CustomCarrocel(),
                SizedBox(height: 16,),
                Text('Trabalhos concluídos', style: TextStyle(color: Colors.black, fontSize: 24),),
                SizedBox(height: 16,),
                CustomTrabCarrocel(),           
              ],
            ),
          ],
        )
      ),
    );
  }
}