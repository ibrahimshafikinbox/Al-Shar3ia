import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final Function? onSubmit;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? onValidate;
  final VoidCallback? suffixPressed;
  // final String label;
  final String hint;
  // final IconData prefix;
  final bool isPassword;
  final IconData? suffix;

  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    required this.onValidate,
    this.suffixPressed,
    // required this.label,
    required this.hint,
    // required this.prefix,
    this.isPassword = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: onTap,

      validator: onValidate,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 13),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      // child: Container(
      //   decoration: BoxDecoration(color: Color.fromARGB(255, 242, 247, 242)),
      //   height: 55,
      //   child: TextFormField(
      //     // cursorHeight: 45,

      //   ),
      // ),
    );
  }
}
