import 'package:flutter/material.dart';

class QuestionWithConfirmationWidget extends StatelessWidget {
  final String question;
  final bool condition;

  const QuestionWithConfirmationWidget({
    Key? key,
    required this.question,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 244, 242, 242),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              question,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            condition
                ? const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 30,
                  )
                : const Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 30,
                  ),
          ],
        ),
      ),
    );
  }
}
