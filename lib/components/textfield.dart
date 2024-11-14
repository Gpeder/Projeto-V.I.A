import 'package:flutter/material.dart';
import 'package:via_projeto/components/color.dart'; 

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
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
    );
  }
}
