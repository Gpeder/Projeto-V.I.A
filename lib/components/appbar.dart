import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/buttons.dart';
import 'package:via_projeto/components/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar( {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius:  const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                  ),
                  hintText: 'Pesquisar',
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
         const IconCircleAvatar(imageAsset: 'assets/images/avatar.jpg'),
        ],
      ),
    );
  }
}


class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 16, top: 10),
      child:  Row(
        children: [
          IconButton(onPressed: () { Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, size: 30,)),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                  ),
                  hintText: 'Pesquisar',
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          )
        ],
      )
    );
  }
}