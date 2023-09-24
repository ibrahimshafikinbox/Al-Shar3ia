import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CategoriesItem({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromARGB(255, 2, 92, 5),
            width: 2.0,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Text(
              '$text',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 2, 92, 5),
              ),
            ),
            Spacer(),
            IconButton(
              color: Color.fromARGB(255, 2, 92, 5),
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
