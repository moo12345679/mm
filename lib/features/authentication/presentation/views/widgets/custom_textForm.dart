import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {
  const CustomTextform({
    super.key,
    required this.hint,
    required this.icon,
    required this.textEditingController,
  });
  final String hint;
  final Icon icon;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hint,
          label: icon,
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please enter text';
          }
          return null;
        },
      ),
    );
  }
}
