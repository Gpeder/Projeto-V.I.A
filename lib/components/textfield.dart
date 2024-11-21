import 'package:flutter/material.dart';
import 'package:via_projeto/components/color.dart'; 

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  final _formKey = GlobalKey<FormState>();
  final _textContoller= TextEditingController();


  CustomTextField({
    super.key,
    required this.label,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _textContoller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              // Borda padrão
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor), 
              ),
              // Borda quando em foco
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor), 
              ),
              // Cor do label
              labelText: label,
              labelStyle: const TextStyle(color: Colors.yellow), 
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFieldsenha extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  final _formKey = GlobalKey<FormState>();
  final _senhaController= TextEditingController();


  CustomTextFieldsenha({
    super.key,
    required this.label,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _senhaController,
            keyboardType: keyboardType,
            
            decoration: InputDecoration(
              // Borda padrão
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor), 
              ),
              // Borda quando em foco
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor), 
              ),
              // Cor do label
              labelText: label,
              labelStyle: const TextStyle(color: Colors.yellow), 
            ),
          ),
        ],
      ),
    );
  }
}



class CustomFormText extends StatelessWidget {
  final String name;
  const CustomFormText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppColors.cinza),
      alignment: Alignment.centerLeft,
      height: 60,
      width: double.infinity,
      child:  Row(
        children: [
         Text(
            name,
            style: const TextStyle(fontSize:20),)
        ],
      ),
         );
  }
}