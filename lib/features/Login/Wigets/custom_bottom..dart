import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double height;
  final double width;
  final Color background;
  final VoidCallback function;
  final String text;
  final bool isUpperCase;
  final double radius;
  final Color textColor;

  const DefaultButton({
    Key? key,
    this.height = 45,
    this.width = double.infinity,
    this.background = Colors.green,
    required this.function,
    required this.text,
    this.isUpperCase = false,
    this.radius = 10.0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: const Color.fromARGB(255, 2, 52, 4),
        ),
        child: MaterialButton(
          onPressed: function,
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
