import 'package:flutter/material.dart';

class Details_Location_Call extends StatelessWidget {
  final String requiredtext;
  final VoidCallback onpressed;
  Details_Location_Call({
    Key? key,
    required this.requiredtext,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromARGB(255, 2, 92, 5),
            width: 2.0,
          ),
        ),
        child: GestureDetector(
          onTap: onpressed,
          child: Center(
              child: Text(
            requiredtext,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 2, 92, 5),
            ),
          )),
        ),
      ),
    );
  }
}
