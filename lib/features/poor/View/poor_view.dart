import 'package:final_shar3ia_mobile/core/Widgtes/Custom_AppBar.dart';
import 'package:flutter/material.dart';

class PoorView extends StatelessWidget {
  const PoorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(requiredappBarText: "poor"),
          SizedBox(
            height: 300,
          ),
          Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
