
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/color.dart';

class CustomCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final IconData icon2;
  final Color iconColor2;
  final String titleButton;
  final String titleButton2;

  const CustomCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.titleButton,
    required this.titleButton2,
    required this.icon2,
    required this.iconColor2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: AppColors.primaryColorHover,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem
            Container(
              width: 280,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(6),),
              ),
            ),
            const SizedBox(height: 10),
            Text(subtitle,style: const TextStyle(color: AppColors.cinzaEsc,),
            ),
            Text(title,style: const TextStyle(color: AppColors.black,fontSize: 20,fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
            // Ícones
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: AppColors.cinza,borderRadius: BorderRadius.all(Radius.circular(50),),),
                  child: Row(
                    children: [
                      Icon(icon,size: 16,color: iconColor,),
                      const SizedBox(width: 8,),
                      Text(titleButton,style: const TextStyle(color: AppColors.black, fontSize: 16)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: AppColors.cinza,borderRadius: BorderRadius.all(Radius.circular(50),),),
                  child: Row(
                    children: [
                      Icon(icon2,size: 16,color: iconColor2,),
                      const SizedBox(width: 8,),
                      Text(titleButton2,style: const TextStyle(color: AppColors.black, fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustommidCard extends StatelessWidget {
  final String imageAsset;
  final String title;

  const CustommidCard({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: AppColors.primaryColorHover,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem
            Container(
              width: 180,
              height: 260,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            // Ícones
          ],
        ),
      ),
    );
  }
}

class CustomTrabCard extends StatelessWidget {
  final String imageAsset;
  final String localidade;
  final String title;
  final String nome;
  final String tempSem;
  final String aval;
  final String fav;
  final String tempH;

  const CustomTrabCard({
    super.key,
    required this.imageAsset,
    required this.localidade,
    required this.title,
    required this.nome,
    required this.tempSem,
    required this.aval,
    required this.fav,
    required this.tempH,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.primaryColorHover,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: AppColors.cinza),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 8),
            // Localidade e título
            Text(localidade,
                style:
                    const TextStyle(color: AppColors.cinzaEsc, fontSize: 16)),
            const SizedBox(height: 4),
            Text(title,
                style: const TextStyle(color: AppColors.black, fontSize: 24)),
            const SizedBox(height: 8),
            // Nome com ícone
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.arrowRight,
                  size: 16,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(width: 8),
                Text(nome,
                    style: const TextStyle(
                        color: AppColors.cinzaEsc, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 4),
            // Data
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.calendarDay,
                  size: 16,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(width: 8),
                Text(tempSem,
                    style: const TextStyle(
                        color: AppColors.cinzaEsc, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildInfoBox(
                  icon: FontAwesomeIcons.star,
                  iconColor: AppColors.primaryColor,
                  text: aval,
                ),
                const SizedBox(width: 8),
                _buildInfoBox(
                  icon: FontAwesomeIcons.heart,
                  iconColor: AppColors.vermelho,
                  text: fav,
                ),
                const SizedBox(width: 8),
                _buildInfoBox(
                  icon: FontAwesomeIcons.clock,
                  iconColor: AppColors.cinzaEsc,
                  text: tempH,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: AppColors.cinza,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(width: 8),
          Text(text,
              style: const TextStyle(color: AppColors.black, fontSize: 16)),
        ],
      ),
    );
  }
}

class CustomFavCard extends StatelessWidget {
  final String imageAsset;
  final String localidade;
  final String title;
  final String nome;
  final String tempSem;
  final String aval;
  final String fav;
  final String tempH;

  const CustomFavCard({
    super.key,
    required this.imageAsset,
    required this.localidade,
    required this.title,
    required this.nome,
    required this.tempSem,
    required this.aval,
    required this.fav,
    required this.tempH,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.primaryColorHover,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: AppColors.cinza),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 8),
            Text(localidade,
                style:
                    const TextStyle(color: AppColors.cinzaEsc, fontSize: 16)),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style:
                        const TextStyle(color: AppColors.black, fontSize: 24)),
                _buildInfoBox(
                  icon: FontAwesomeIcons.heartCirclePlus,
                  iconColor: AppColors.vermelho,
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox({
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.cinza,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24, color: iconColor),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

class CustomCardtest extends StatelessWidget {
  final String imageAsset;
  final String nome;
  final String data;
  final String desc;
  final String aval;

  const CustomCardtest(
      {super.key,
      required this.imageAsset,
      required this.nome,
      required this.data, required this.aval, required this.desc,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.cinza,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 30,backgroundImage: AssetImage(imageAsset),),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nome,style: const TextStyle(color: Colors.black, fontSize: 24),),
                  Text(data,style: const TextStyle(color: AppColors.cinzaEsc, fontSize: 14),),
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:  Text(desc,style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Row(
                children: [
                  const Icon(FontAwesomeIcons.star, size: 24, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  Text(aval, style: const TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomCard2({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem
            Container(
              width: 280,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(6),),
              ),
            ),
            const SizedBox(height: 10),
            Text(subtitle,style: const TextStyle(color: AppColors.cinzaEsc,),
            ),
            Text(title,style: const TextStyle(color: AppColors.black,fontSize: 20,fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
          ],
        ),
    );
  }
}