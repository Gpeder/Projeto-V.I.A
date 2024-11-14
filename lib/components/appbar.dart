import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    color: AppColors.primaryColor,
                  ),
                  hintText: 'Pesquisar',
                  hintStyle: TextStyle(color: AppColors.primaryColor),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.userLarge,
              color: AppColors.primaryColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
