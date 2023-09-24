import 'package:flutter/material.dart';

class CustomChildrenRow extends StatelessWidget {
  final String requiredText;
  final String textdata;
  const CustomChildrenRow({
    Key? key,
    required this.requiredText,
    required this.textdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            requiredText,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            textdata,
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
