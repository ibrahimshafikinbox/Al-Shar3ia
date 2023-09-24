import 'package:final_shar3ia_mobile/features/More/widgets/categories/Rest_Of_Categories.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/application_settings.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class More_Body extends StatefulWidget {
  const More_Body({super.key});

  @override
  State<More_Body> createState() => _More_BodyState();
}

class _More_BodyState extends State<More_Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        application_settings(),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: SizedBox(child: Rest_Of_Categories()),
        ),
      ],
    );
  }
}
