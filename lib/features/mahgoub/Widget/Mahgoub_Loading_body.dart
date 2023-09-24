import 'package:flutter/material.dart';

class MahgoubLoadingBody extends StatelessWidget {
  const MahgoubLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 300,
        ),
        Center(child: CircularProgressIndicator())
      ],
    );
  }
}
