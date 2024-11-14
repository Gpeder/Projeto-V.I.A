import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  final String text;
  final String imageAsset;
  final Color textColor;
  final double fontSize;

  const CustomBanner({
    super.key,
    required this.text,
    required this.imageAsset,
    this.textColor = Colors.white,
    this.fontSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: 200,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}



class CustomBanner2 extends StatelessWidget {
  final String imagePath; // Caminho da imagem
  final String text;      // Texto que será exibido
  
  const CustomBanner2({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath), // Usando o caminho da imagem passado
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text, // Usando o texto passado
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
