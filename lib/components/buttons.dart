import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:via_projeto/components/color.dart';



class PrimaryBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const PrimaryBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Ink(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 45,
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, fontFamily: 'Roboto'),
            ),
          ),
        ),
      ),
    );
  }
}

class SecundaryBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  const SecundaryBtn({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  icon,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18, fontFamily: 'Roboto', color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text1;
  final String text2;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text1,
    required this.text2,
    this.textStyle1,
    this.textStyle2,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          style: textStyle1 ?? const TextStyle(color: Colors.white),
          children: [
            TextSpan(text: text1),
            TextSpan(
              text: text2,
              style: textStyle2 ?? const TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextButtom2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String text2;
  const CustomTextButtom2(
      {super.key,
      required this.text,
      required this.text2,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
        const SizedBox(width: 8),
        TextButton(
            onPressed: onPressed,
            child: Text(
              text2,
              style: const TextStyle(color: AppColors.primaryColor),
            ))
      ],
    );
  }
}

class CustomFormButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFormButton({super.key, required this.text, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return
     InkWell(
      onTap: onPressed,
       child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.cinza),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 24),
            ),
            const Spacer(),
             Icon(
              icon,
              color: AppColors.vermelho,
            )
          ],
        ),
           ),
     );
  }
}


class CustomBtnModal extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  const CustomBtnModal({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Ink(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 8),
                Icon(
                  icon,
                  size: 24,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconCircleAvatar extends StatelessWidget {
  final String imageAsset;
  const IconCircleAvatar({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/perfil');
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(imageAsset),
        radius: 30,
      ),
    );
  }
}