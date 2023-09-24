import 'package:final_shar3ia_mobile/core/Widgtes/Custom_AppBar.dart';
import 'package:flutter/material.dart';

class food_Bank_View extends StatelessWidget {
  const food_Bank_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(requiredappBarText: "food_Bank"),
          SizedBox(
            height: 300,
          ),
          Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
