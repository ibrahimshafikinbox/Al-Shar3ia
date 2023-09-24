import 'package:final_shar3ia_mobile/core/Widgtes/Custom_AppBar.dart';
import 'package:flutter/material.dart';

class OrphansView extends StatelessWidget {
  const OrphansView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(requiredappBarText: "orphans"),
          SizedBox(
            height: 300,
          ),
          Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
